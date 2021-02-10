# Armory3d-First-Person-Controller
This is the First Person Controller documentation for the video. In this documentation you will learn how everything is set up with the math nodes and so on.

# Transform Vector
In a 3d world a player can face in any direction he wants. If the player looks to his right 90 degrees then he is facing to right side. The looking direction is now different. The looking direction is where he is looking, where the camera is pointing. In this direction we want to walk if we press W on our keyboard. In Armory3d this is 1 + on the Y Axis. Now the same thing we want when we walking backwards but for this we need to make the (Y = 1) negative because we travel in the opposite direction:

![0](https://user-images.githubusercontent.com/48133099/107522433-00677e80-6bb4-11eb-98d2-474d237ac7df.png)

The same thing with forward & backwards goes with left & right. The positive direction (right) dont need math to get calculated but for the negative direction (left) it is needed.


![2](https://user-images.githubusercontent.com/48133099/107523062-a3b89380-6bb4-11eb-9add-8f24d7d615ff.PNG)

# Delta Time
Straight off: Delta time is the time between the elapsed frames. The game that you playing maybe everyday is working frame by frame...like the flipbooks in your childhood that you have drawn site by site. In the end you there was an animation. In the game engine the time between the frames or page is the delta time. The reason why it is very important to work with delta time: If somebody plays your game with a slower pc, the speed of the looking direction is not the same as a faster pc and with this problem there is a lot of differences between user experiences.


![delta time](https://user-images.githubusercontent.com/48133099/107525166-d8c5e580-6bb6-11eb-8f94-213948e87ba5.png)


![delta time 2](https://user-images.githubusercontent.com/48133099/107525178-dcf20300-6bb6-11eb-9725-61e704c2266b.png)
