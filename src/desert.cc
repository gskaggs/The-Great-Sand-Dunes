#include <iostream>
#include <vector>
#include "desert.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <GLFW/glfw3.h>

void Particle::update() {

}

Floor::Floor(int w, int h) : height(w, std::vector<double>(h)), 
                             saltation(w, std::vector<int>(h)),
                             deposition(w, std::vector<int>(h))
{
    
}

bool Floor::intersect(Particle* p) {
    return true;
}

void Floor::updateHeight() {

}

void Floor::saltate(std::vector<Particle*>& newParticles) {

}

Desert::Desert(int width, int height) : floor(width, height) {
   head = new Particle;
}

void Desert::updateSimulation(double dt) {

}

void Desert::getFloor(std::vector<glm::vec4>& verts, std::vector<glm::uvec3>& faces) {
	verts.push_back(glm::vec4(kFloorXMin, kFloorY, kFloorZMax, 1.0f));
	verts.push_back(glm::vec4(kFloorXMax, kFloorY, kFloorZMax, 1.0f));
	verts.push_back(glm::vec4(kFloorXMax, kFloorY, kFloorZMin, 1.0f));
	verts.push_back(glm::vec4(kFloorXMin, kFloorY, kFloorZMin, 1.0f));
	faces.push_back(glm::uvec3(0, 1, 2));
	faces.push_back(glm::uvec3(2, 3, 0));
}
