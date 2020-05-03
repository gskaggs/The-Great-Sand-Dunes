#ifndef CONFIG_H
#define CONFIG_H

#include <glm/glm.hpp>
#include <cmath>

/*
 * Global variables go here.
 */

const double PI = 3.14159265;

const float kCylinderRadius = 0.25;
const int kMaxBones = 128;

const float kNear = 0.1f;
const float kFar = 1000.0f;
const float kFov = 45.0f;

// Floor info.
const float kFloorEps = 0.5 * (0.025 + 0.0175);
const float kFloorXMin = -100.0f;
const float kFloorXMax = 100.0f;
const float kFloorZMin = -100.0f;
const float kFloorZMax = 100.0f;
const float kFloorY = -0.75617 - kFloorEps;

const float kScrollSpeed = 64.0f;

// Desert info
const int world_width = 64, world_height = 64;
const float hmap_resolution = 1;
const int hmap_width = world_width * hmap_resolution, 
          hmap_height = world_height * hmap_resolution;
const double delta_t = 0.1;
const double end_time = 50;

//const int num_particles = 50000*hmap_resolution;
const double grain_size = 0.15;
const double u_star = 1;
const double B = 1.5; // [0.8, 2] wind constant
const double Q = 0.5; // saltation probability

const double psi = 45*PI/180;
const glm::dvec3 windDir = glm::dvec3(cos(psi),0,sin(psi));
const double K = 1;
const double z_0 = 50;
const double mass = 0.1;
const double gravity = mass * 9.8;

const double fatten = 0.5;
const double ffrac = 0.5;
const double jepsilon = 0.1;
#endif
