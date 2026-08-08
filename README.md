# Godot-Texture-to-Particle-Shader
I'm pretty new to shader code, but this shader will break images into a square grid of particles. 

Feel free to use this and add to it! I would like to be able to break the texture up into different shapes, but shader code hurts my head.

HOW TO USE:

1. Attach a texture to a GPUParticles2D node.

1. Attach the shader to a GPUParticles2D node.

   DO NOT add it to "Process Material", apply it in the other Materials tab near the bottom of the node properties!

2. Adjust grid size and particle count.

   Pretty simple, adjust the "Grid Size" in the shader properties and set it to whatever you like. (Example: 2 = 2x2 grid)
   Then adjust the GPUParticles2D node to have a Max/Total Particle count that is equal to Grid Size ^ 2. (Example: 3x3 grid = 9 particles)

For now this will only break up the texture into square pieces on a square grid, maybe one day or with some help it'll have more utility.


<img width="208" height="152" alt="20260808-1318-13 1231044" src="https://github.com/user-attachments/assets/e2abeb01-522a-4c57-b6d8-c200849fa5a7" />
