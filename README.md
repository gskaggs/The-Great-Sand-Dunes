# The Great Sand Dunes
Physical simulation of sand particles to render photo realistic images of desert dunes and ripples. This was a course research project for CS 378H Computer Graphics Honors at UT Austin, which I completed in collaberation with my partner Rahul Krishnan.

## Algorithms
To create ambitious desert geometries, we simulated the physics of wind-blown sand particles. Additionally, to improve the realism of the images produced, we also implemented Catmull-Clark subdivision and procedurally generated terrain.

#### Particle Simulation

#### Catmull-Clark Subdivision
Catmull-Clark is a classic algorithm in computer graphics whereby a surface is recursively subdivided and made incrementally smoother. For example, this image taken from [Wikipedia](https://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface) depicts a cube which is made to increasingly approximate a sphere:
![GitHub Logo](/images/cat-clark.png)

For a complete description of how the algorithm works, see the [Wikipedia article](https://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface) mentioned above.

#### Procedurally Generated Terrain


## Configuration
To modulate the simulation's configuration edit *src/config.h*. We especially recommend modifying the values for:
* hmap_resolution
* fatten
* ffrac
* num_levels 
* subdivs

where **hmap_resolution** determines the density of height map points in the simulation, **fatten** is the friction bouncing particles experience in the normal direction, **frac** is the friction bouncing particles experience in the tangential direction, **num_levels** is the number of levels used in the procedural generation of random terrain, **subdivs** is the number of subdivision layers used in the Catmull-Clark algorithm.

## Execution
The script *build.sh* builds the project using the cmake settings we've configured for MacOS. Once successfully built, the project can be run with the script *run.sh*.
(You may need to modify our Makefiles if you're not using MacOS.)

## Example Images
#### Sand Ripples:
![GitHub Logo](/images/ripples.png)

#### Procedural Noise With Sand Simulation:
![GitHub Logo](/images/procedural.png)

#### Without Catmull-Clark Subdivisions:
![GitHub Logo](/images/edgy.png)

#### Procedural Noise Without Sand Simulation:
![GitHub Logo](/images/bumpy.png)

## Referenced Works:
*Real-Time Simulation of Aeolian Sand Movement and Sand Ripple Evolution* by Ning Wang and Bao-Gang Hu.

