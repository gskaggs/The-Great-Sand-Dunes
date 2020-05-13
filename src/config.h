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
const int world_width = 32, world_height = 32;
const float hmap_resolution = 1;  
const int hmap_width = world_width * hmap_resolution, 
          hmap_height = world_height * hmap_resolution;
const double delta_t = 0.01;
const double end_time = 10;

//const int num_particles = 50000*hmap_resolution;
const bool one_part = false;
const double grain_size = 0.0015;
const double u_star = 0.2; //friction velocity
const double B = 1.5; // [0.8, 2] wind constant
const double Q = 0.5; // saltation probability
const int max_salt_angle_diff = 69;
const int subdivs = 3;

const double psi = 45*PI/180;
const glm::dvec3 windDir = glm::dvec3(cos(psi),0,sin(psi));
const double K = 0.4;
const double z_0 = 0.005;
const double mass = 4.0/24 * PI * grain_size * grain_size * grain_size * 1631; 
const double gravity = mass * .98;

const double fatten = 0.02;
const double ffrac = 0.03;
const double jepsilon = 0.1;


// Procedural Geometry
const int D1 = 2;
const int num_levels = 12;
#endif
