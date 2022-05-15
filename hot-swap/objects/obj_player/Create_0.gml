/// @description Insert description here
// You can write your code in this editor

u = 0;
d = 1;
l = 2;
r = 3;

s = 0.05;

maxSpeed = 2;
slowDown = 0;
slowDownSpeed = 0.0;
slowDownTime = 60;

#region // Spawn Pellet
if (choose(0,1) == 0) {
	//spawn down the side
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	//spawn top or bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instances", obj_pellet);
#endregion