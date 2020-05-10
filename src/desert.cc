#include <iostream>
#include <vector>
#include "desert.h"
#include <cmath>
#include <stdlib.h>
#include <time.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <GLFW/glfw3.h>

double e = 2.71828;
int numParticles = 0;
int interParticles = 0;
int bounce = 0;
int died = 0;
double sa = PI/8*grain_size*grain_size;
double cds = 0.48;
double rho = 1.225;

glm::dvec3 windSpeed(glm::dvec3 P) {
    return windDir * ((u_star / K) * log(P[1]/z_0)/log(e)) * 5.0;   
    //return 0.2 * windDir;
}

void Particle::update() {
    P += V*delta_t;
    glm::dvec3 U = windSpeed(P);
    //std::cout << "U: " << U[0] << " " << U[1] << " " << U[2] << std::endl;
    //std::cout << "V: " << V[0] << " " << V[1] << " " << V[2] << std::endl;
    glm::dvec3 delta_V = U - V;
    glm::dvec3 F_wind = rho * sa * cds * glm::length(delta_V) * delta_V; 
    //std::cout << "a_wind: " << F_wind[0]/mass << " " << F_wind[1]/mass << " " << F_wind[2]/mass << std::endl;
    glm::dvec3 F_g = glm::dvec3(0, -1, 0) * gravity;
    //std::cout << "a_g: " << F_g[0]/mass << " " << F_g[1]/mass << " " << F_g[2]/mass << std::endl;
    V += (F_wind + F_g)*(delta_t/mass);
}

Floor::Floor(int w, int h) : height(w, std::vector<double>(h)), 
                             saltation(w, std::vector<int>(h)),
                             deposition(w, std::vector<double>(h))
{
       srand(time(NULL));
       //for(int i = 0; i < num_particles; i++) {
       //     int randx = rand() % hmap_width;
       //     int randy = rand() % hmap_height;
       //     deposition[randx][randy]++;
       //}
       for(int i = 0; i < w; i++) {
            for(int j = 0; j < h; j++) {
                //height[i][j] = grain_size*(rand()%800 + 200);
                height[i][j] = grain_size*500;
            }
       }
       updateHeight();
}

bool Floor::intersect(Particle* p) {
    double x = p->P[0]*hmap_resolution;
    double y = p->P[1];
    double z = p->P[2]*hmap_resolution;
    double h = 0; 

    int r = (int)floor(x), c = (int)floor(z);
    if(r < 0 || c < 0 || r >= hmap_width - 1 || c >= hmap_height - 1) {
        if(r < 0) p->P[0] = world_width-1;
        if(c < 0) p->P[2] = world_height-1; 

        if(r >= hmap_width - 1) p->P[0] = p->P[0] = 0;
        if(c >= hmap_height - 1) p->P[2] = p->P[2] = 0;
        died++;

        p->P[1] = grain_size*1500;
        return true; 
    }

    glm::dvec3 N = glm::dvec3(0);
    //h = (x-r)*(z-c)*height[r][c] + (r+1-x)*(z-c)*height[r+1][c] 
    //    + (x-r)*(c+1-z)*height[r][c+1] + (r+1-x)*(c+1-z)*height[r+1][c+1];
    if(x-r + z-c < r+1-x + c+1-z) {
        //triangle 1
        h = height[r][c] + height[r+1][c] + height[r][c+1];
        h /= 3;

        glm::dvec3 v1 = position(r,c+1) - position(r,c);
        glm::dvec3 v2 = position(r+1,c) - position(r,c);
        N = glm::normalize(cross(v1, v2));
        if(glm::dot(N, glm::dvec3(0,1,0)) < 0) std::cerr << "oops1" << std::endl;
    } else {
        //triangle 2
        h = height[r+1][c] + height[r][c+1] + height[r+1][c+1];
        h /= 3;

        glm::dvec3 v1 = position(r+1, c+1) - position(r, c+1);
        glm::dvec3 v2 = position(r+1, c) - position(r, c+1);
        N = glm::normalize(cross(v1, v2));
        if(glm::dot(N, glm::dvec3(0,1,0)) < 0) std::cerr << "oops2" << std::endl;
    }

    if(h >= y) {
        p->P[1] = h;
        glm::dvec3 V_n = glm::dot(p->V, N) * N;
        glm::dvec3 V_t = p->V - V_n;
        p->V = - V_n * fatten + V_t * ffrac;
        
        bounce++;
        if(glm::length(p->V) > jepsilon) {
            //std::cout << "BOUNCEDDD--------------------------------------------------------" << std::endl;
            return false;
        }
        bounce--;

        //if(x-r > 0.5) r++;
        //if(z-c > 0.5) c++;
        deposition[r][c]+= (x-r)*(z-c);
        deposition[r+1][c]+= (r+1-x)*(z-c);
        deposition[r][c+1]+= (x-r)*(c+1-z);
        deposition[r+1][c+1]+= (r+1-x)*(c+1-z);
        interParticles++;
        //std::cout << "INTERSECTED--------------------------------------------------------" << std::endl;
        return true;
    } else {
        return false;
    }
}

void Floor::updateHeight() {
    for(int i = 0; i < hmap_width; i++) {
        for(int j = 0; j < hmap_height; j++) {
            height[i][j] += (deposition[i][j] - saltation[i][j]) * grain_size;
            saltation[i][j] = 0;
            deposition[i][j] = 0;
        }
    }
}

void Floor::saltate(std::vector<Particle*>& newParticles) {
    newParticles.clear();
    for(int i = 0; i < hmap_width; i++) {
        for(int j = 0; j < hmap_height; j++) {
             int rando = rand() % 100 + 1;
             //if(numParticles >= 1) return;
             if(rando < Q*100 && height[i][j] > 1e-5) {
                // create particle
                Particle* p = new Particle;
                p->P = position(i,j);
                p->V = initV();
                newParticles.push_back(p);
                saltation[i][j] = 1;
                //return;
             } else {
                saltation[i][j] = 0;
            }
        }
    }
}

glm::dvec3 Floor::position(int i, int j) {
    return glm::dvec3(i/hmap_resolution, height[i][j], j/hmap_resolution);
}

glm::dvec3 Floor::initV() {
    double v_x, v_y, v_z;
    v_y = B * u_star;
    double phi = ((rand() % 69) + 21)*(2*PI/360);
    if(sin(phi) < 0.3 || phi > PI/2) std::cerr << "oops" << std::endl;
    if(phi < 1e-5) phi = 0.1;
    double V_ = v_y / sin(phi);
    v_x = V_ * cos(phi) * cos(psi);
    v_z = V_ * cos(phi) * sin(psi);

    return glm::dvec3(v_x, v_y, v_z);
}

Desert::Desert(int width, int height) : floor(width, height) {
   head = new Particle;
}

void Desert::updateSimulation() {
    Particle* curr = head->next;
    while(curr) {
        curr->update();
        curr = curr->next;
    }

    curr = head->next;
    /*if(curr) {
        std::cout << "position: (" << curr->P[0] << ", " << curr->P[1] << ", " << curr->P[2] << "); ";
        std::cout << "velocity: <" << curr->V[0] << ", " << curr->V[1] << ", " << curr->V[2] << ">";
        std::cout << "nuMPARITLCULAR "<< numParticles << std::endl;
    }*/
    while(curr) {
        if(floor.intersect(curr)) {
             //interParticles++;
             // delete particle
             Particle* prev = curr->prev;
             prev->next = curr->next;
             if(curr->next) {
                curr->next->prev = prev;
             }
            
            delete curr;
            curr = prev;
            numParticles--;
        }
        curr = curr->next;
    }
    
    std::vector<Particle*> newParticles;
    floor.saltate(newParticles);
    for(Particle* part : newParticles) {
        numParticles++;
        if(!head->next) {
            head->next = part;
            part->prev = head;
        } else {
            part->next = head->next;
            part->prev = head;
            head->next = part;
            part->next->prev = part;
        }
    }

    floor.updateHeight();
}

int v_coord(int i, int j) {
    return i*hmap_height + j;
}

void Floor::getFloor(std::vector<glm::vec4>& verts, std::vector<glm::uvec3>& faces) {
    for(int i = 0 ; i < hmap_width; i++) {
        for(int j = 0; j < hmap_height; j++) {
            verts.push_back(glm::vec4(position(i,j), 1));
            std::cout << height[i][j] << " ";
        
            if(i+1 < hmap_width && j+1 < hmap_height) {
                faces.push_back(glm::uvec3(v_coord(i,j), v_coord(i, j+1), v_coord(i+1, j)));
                faces.push_back(glm::uvec3(v_coord(i,j+1), v_coord(i+1, j+1), v_coord(i+1, j)));
            }
        }
        std::cout << std::endl;
    }
}

void Desert::getFloor(std::vector<glm::vec4>& verts, std::vector<glm::uvec3>& faces) {
    verts.clear();
    faces.clear();
    floor.getFloor(verts, faces);
    std::cout << "PARTICAULS: " << numParticles << std::endl;
    std::cout << "INTERPARTI: " << interParticles << std::endl;
    std::cout << "BOONCY: " << bounce << std::endl;
    std::cout << "DOOOD: " << died << std::endl;
}
