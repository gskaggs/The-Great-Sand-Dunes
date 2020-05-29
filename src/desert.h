#pragma once
#include <iostream>
#include <vector>
#include "config.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <GLFW/glfw3.h>

struct Particle {
    glm::dvec3 P, V; //position, velocity
    Particle *next = nullptr, *prev = nullptr; // linked list pointers
    
    void update();
};

class Floor {
public:
    Floor(int w, int h);
    
    bool intersect(Particle* p);
    void updateHeight(); 
    void saltate(std::vector<Particle*>& newParticles);
    void getFloor(std::vector<glm::vec4>& verts, std::vector<glm::uvec3>& faces);
    std::vector<std::vector<glm::dvec4>> cat_cull(std::vector<std::vector<glm::dvec4>>& p);
private:
    std::vector<std::vector<double>> height; // height map
    std::vector<std::vector<int>> saltation; // particles born at each height map point 
    std::vector<std::vector<double>> deposition; // particles deposited at each height map point 

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
    Particle* head; // linked list head
};
