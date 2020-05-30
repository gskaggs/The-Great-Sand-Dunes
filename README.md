
![GitHub Logo](/images/title.png)

Physical simulation of sand particles to render photo realistic images of desert dunes and ripples. This was a course research project for CS 378H Computer Graphics Honors at UT Austin, which I completed in collaboration with my partner Rahul Krishnan.

## How It Works
To create ambitious desert geometries, we simulated the physics of wind-blown sand particles. Additionally, to improve the realism of the images produced, we also implemented Catmull-Clark subdivision and procedurally generated noise.

### *Physical Simulation*
**Height Map:**
We represent the desert floor as 2D grid of height values which we call the *height map*.
At each time step of the simulation, the value at row *i* and column *j* of the map is updated with the following equation:
![GitHub Logo](/images/hmap.png)
where ![equation](https://latex.codecogs.com/gif.latex?n_d) is the number of particles deposited at that point, ![equation](https://latex.codecogs.com/gif.latex?n_b) is the number of particles leaving that point, and ![equation](https://latex.codecogs.com/gif.latex?%5Cdelta) is the diameter of any given particle. 
![equation](https://latex.codecogs.com/gif.latex?n_d) is determined by particle collisions with the floor, while ![equation](https://latex.codecogs.com/gif.latex?n_b) is either 1 or 0 and determined with a pseudo random number generator.

**Particles:**
The particles are stored in a linked list. At each time step their individual velocities and positions are updated with the following equations:

![GitHub Logo](/images/particle.png)

where the ![equation](https://latex.codecogs.com/gif.latex?F_g) is the force of gravity and ![equation](https://latex.codecogs.com/gif.latex?F_d) is the force of drag from the wind.
A particle's initial velocity is determined by the wind velocity and direction, while a particle's initial position is the physical location of the height map point where it was born.

**Collision:**
When a particle collides with the floor, it's velocity is attenuated and then redirected upwards.
Then it can either stay alive and bounce if the magnitude of its resulting velocity is greater than some epsilon or it can be deposited at that point in the floor otherwise.

For more details regarding any aspect of the physical simulation we did please see Wang and Hu's paper referenced below.

### *Catmull-Clark Subdivision*
The physical simulation above resulted in a mesh which was too jaggy. To fix this, we implemented the classic Catmull-Clark algorithm whereby a surface is recursively subdivided and made incrementally smoother. For example, this image taken from [Wikipedia](https://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface) depicts a cube which is made to increasingly approximate a sphere:
![GitHub Logo](/images/cat-clark.png)

For a complete description of how the algorithm works, see the [Wikipedia article](https://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface) mentioned above.

### *Procedurally Generated Noise*
To add organic bumps to and dune-like geometries to our desert we implemented a form of noise generation whereby course noise is combined with upsampling increasingly finer grained noise. Graphically, the basics of this algorithm can be depicted simply:
![GitHub Logo](/images/noise.png)

### *Rendering*
We converted the polygonal mesh of the floor which results from the above algorithms into a triangular mesh which we rendered on the GPU using OpenGL.

## Configuration
To modulate the simulation's configuration edit *src/config.h*. We especially recommend modifying the values for:
* hmap_resolution
* fatten
* ffrac
* num_levels 
* subdivs

where **hmap_resolution** determines the density of height map points in the simulation, **fatten** is the friction bouncing particles experience in the normal direction, **ffrac** is the friction bouncing particles experience in the tangential direction, **num_levels** is the number of levels used in the procedural noise generation, and **subdivs** is the number of subdivision layers used in the Catmull-Clark algorithm.

## Execution
The script *build.sh* builds the project using the cmake settings we've configured for MacOS. Once successfully built, the project can be run with the script *run.sh*.
(You may need to modify our Makefiles if you're not using MacOS.)

## Example Images
#### Sand Simulation With Catmull-Clark:
![GitHub Logo](/images/ripples.png)

#### Procedural Noise With Sand Simulation and Catmull-Clark:
![GitHub Logo](/images/procedural.png)

#### Sand Simulation Without Catmull-Clark Subdivisions:
![GitHub Logo](/images/edgy.png)

#### Procedural Noise Without Sand Simulation:
![GitHub Logo](/images/bumpy.png)

## Referenced Works
The physical simulation math and physics came from:
*Real-Time Simulation of Aeolian Sand Movement and Sand Ripple Evolution* by Ning Wang and Bao-Gang Hu.

