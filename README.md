# Armory3d-First-Person-Controller
This is the First Person Controller documentation for the video. In this documentation you will learn how everything is set up with the math nodes and so on.

# Transform Vector
In a 3d world a player can face in any direction he wants. If the player looks to his right 90 degrees then he is facing to right side. The looking direction is now different. The looking direction is where he is looking, where the camera is pointing. In this direction we want to walk if we press W on our keyboard. In Armory3d this is 1 + on the Y - Axis. Now the same thing we want when we walking backwards but for this we need to make the (Y = 1) negative because we travel in the opposite direction:
