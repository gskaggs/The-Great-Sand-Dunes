#pragma once
#include <iostream>
#include <vector>
#include "config.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <GLFW/glfw3.h>

struct Particle {
    glm::vec3 P, V; //position, velocity
    Particle *next = nullptr, *prev = nullptr;
    
    void update();
};

class Floor {
public:
    Floor(int w, int h);
    
    //True = desert should delete p, 
    //False = floor should update p for collision/bounce
    bool intersect(Particle* p);
    //Called by desert after all particles updated
    void updateHeight(); 
    //Simulate particles entering air
    void saltate(std::vector<Particle*>& newParticles);

private:
    std::vector<std::vector<double>> height;
    std::vector<std::vector<int>> saltation, deposition;
};

class Desert {
public:
    Desert(int width, int height);
    
    void updateSimulation(double dt);
    void getFloor(std::vector<glm::vec4>& verts, std::vector<glm::uvec3>& faces);

private:
    Floor floor;
    Particle* head;
};
