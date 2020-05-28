# The Great Sand Dunes
Physical simulation of sand particles to render photo realistic images of desert dunes and ripples. This was a course research project for CS 378H Computer Graphics Honors at UT Austin, which I completed in collaberation with my partner Rahul Krishnan.

## Algorithm

## Configuration
To modulate the simulation's configuration open *src/config.h*. We especially recommend modifying the values for:
1. hmap_resolution
1. fatten
1. ffrac
1. num_levels 
1. subdivs

where **hmap_resolution** determines the density of height map points in the simulation, **ffatten** is the friction bouncing particles experience in the normal direction, **frac** is the friction bouncing particles experience in the tangential direction, **num_levels** is the number of levels used in the procedural generation of random terrain, **subdivs** is the number of subdivision layers used in the Catmull-Clark algorithm.

## Execution
The script *build.sh* builds the project using the cmake settings we've configured for MacOS. Once successfully built, the project can be run with the script *run.sh*.
(You may need to modify our Makefiles if you're not using MacOS.)

## Example Images
#### Sand Ripples:
![GitHub Logo](/images/ripples.png)

#### Procedural Noise With Sand Simulation:
![GitHub Logo](/images/edgy.png)

#### Without Catmull-Clark Subdivisions:
![GitHub Logo](/imadges/edgy.png)

#### Procedural Noise Without Sand Simulation:
![GitHub Logo](/images/procedural.png)

## Referenced Works:
*Real-Time Simulation of Aeolian Sand Movement and Sand Ripple Evolution* by Ning Wang and Bao-Gang Hu.

