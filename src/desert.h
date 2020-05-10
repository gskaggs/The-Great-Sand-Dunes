#pragma once
#include <iostream>
#include <vector>
#include "config.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <GLFW/glfw3.h>

struct Particle {
    glm::dvec3 P, V; //position, velocity
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
    void getFloor(std::vector<glm::vec4>& verts, std::vector<glm::uvec3>& faces);
private:
    std::vector<std::vector<double>> height;
    std::vector<std::vector<int>> saltation; 
    std::vector<std::vector<double>> deposition;

    glm::dvec3 position(int i, int j);
    glm::dvec3 initV();
};

class Desert {
public:
    Desert(int width, int height);
    
    void updateSimulation();
    void getFloor(std::vector<glm::vec4>& verts, std::vector<glm::uvec3>& faces);

private:
    Floor floor;
    Particle* head;
};
