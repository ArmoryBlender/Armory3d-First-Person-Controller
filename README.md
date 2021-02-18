# Armory3d-First-Person-Controller
This is the First Person Controller documentation for the video. In this documentation you will learn how everything is set up with the math nodes and so on.

# Transform Vector
In a 3d world a player can face in any direction he wants. If the player looks to his right 90 degrees then he is facing to right side. The looking direction is now different. The looking direction is where he is looking, where the camera is pointing. In this direction we want to walk if we press W on our keyboard. In Armory3d this is 1 + on the Y Axis. Now the same thing we want when we walking backwards but for this we need to make the (Y = 1) negative because we travel in the opposite direction:

![0](https://user-images.githubusercontent.com/48133099/107522433-00677e80-6bb4-11eb-98d2-474d237ac7df.png)

The same thing with forward & backwards goes with left & right. The positive direction (right) dont need math to get calculated but for the negative direction (left) it is needed.


![2](https://user-images.githubusercontent.com/48133099/107523062-a3b89380-6bb4-11eb-9add-8f24d7d615ff.PNG)

# Delta Time
Straight off: Delta time is the elapsed time between the frames. The game that you playing maybe everyday is working frame by frame...like the flipbooks in your childhood that you have drawn site by site. In the end you there was an animation. In the game engine the time between the frames or page is the delta time. The reason why it is very important to work with delta time: If somebody plays your game with a slower pc, the speed of the looking direction is not the same as a faster pc and with this problem there is a lot of differences between user experiences.


![delta time](https://user-images.githubusercontent.com/48133099/107525166-d8c5e580-6bb6-11eb-8f94-213948e87ba5.png)


![delta time 2](https://user-images.githubusercontent.com/48133099/107525178-dcf20300-6bb6-11eb-9725-61e704c2266b.png)



I really hope that I explained it correctly. I hope that it helped you!!

Armoryblender




# Update 2:
In the new last video we created sprinting with a stamina system. Additionaly we created a canvas with our stamina bar on it. Now we can run a limited time because of the stamina system.

# Check moving
To run we want to first check if we are actually moving instead of instantly running from the standing state. To check this we add all our keyboard states and merge them all together with the merge node. Everything that you plug into the merge gets checked with a "or" statement. To understand this better this node reads it like this: "If the keyboard key W gets pressed then I will do the task or if at least the other keyboard key S gets pressed then I will also do the task" I know its so bad explained but I hope you get the idea. So if any of those key gets pressed, in other words if are moving in any direction it should check if we are holding the shift button to run. 

![merge](https://user-images.githubusercontent.com/48133099/108365705-cd4a6e00-71f7-11eb-93b3-523114ecfb79.PNG)

To check it now if we are running looks like this:

![Check running](https://user-images.githubusercontent.com/48133099/108365823-f10db400-71f7-11eb-9f34-128bc2a7c0e6.png)


# Stamina System
# Stamina
For the beginners that still doesn't know how the stamina system works:
In the beginning of our game a new property gets created called stamina. This property got assigned with a value, a float value and its set to 100. So you can now look at this like 100 stamina points but with decimals numbers.

Now if we want to run we want to check, if we actually have stamina to run. If we dont have stamina then is clear that we cannot run. We check this with a compare node. It compares to first value(our stamina points) with the second value(given float value). We set the minimum run point to 5. This means that we ran so long that we dont have any more stamina left to run further. This comparision looks like this:

![Unbenannt Kopie](https://user-images.githubusercontent.com/48133099/108367120-6af26d00-71f9-11eb-8c17-94eaa9c63d3b.png)


If we have more than 5 stamina points, then we set the movement speed higher and also set the "IsRunning" property to true. If we less then 5 stamina points left then we set the movement speed to the normal speed and also set the porperty "isRunning" to false.


# IsRunning
So the property knows now when we are running and when not. With this property we can now decide when we want to loose stamina and when to gain stamina. This looks like this:

![Che](https://user-images.githubusercontent.com/48133099/108368022-49de4c00-71fa-11eb-959d-ad2d44679fd7.png)

If it "isRunning" == true then we subtract 0.3 or 0.4 from our stamina points while we running. If "isRunning" == false then we want to gain stamina because we are no longer running. The player can rest now!
