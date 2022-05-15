/// @description Insert description here
// You can write your code in this editor

score++;

#region // Swap Direction
if (other.image_index == 0) {
	switch choose(0, 0) {
		case 0:
			var t = u;
			u = l;
			l = d;
			d = r;
			r = t;
			break;
		case 1:
			var t = u;
			u = r;
			r = d;
			d = l;
			l = t;
			break;
	}
} else if (other.image_index == 1) {
	switch choose(0, 1) {
		case 0:
			var t = u;
			u = d;
			d = t;
			break;
		case 1:
			var t = l;
			l = r;
			r = t;
			break;
	}
} else if (other.image_index == 2) {
	switch choose(0, 1) {
		case 0:
			var t = u;
			u = l;
			l = t;
			break;
		case 1:
			var t = d;
			d = r;
			r = t;
			break;
	}
} else if (other.image_index == 3) {
		switch choose(0, 1) {
		case 0:
			var t = u;
			u = r;
			r = t;
			break;
		case 1:
			var t = d;
			d = l;
			l = t;
			break;
	}
}
#endregion

scr_createDebris(other.x, other.y);

instance_destroy(obj_pellet);

slowDown = slowDownTime;

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

#region // Spawn Hazard
if (choose(0,1) == 0) {
	//spawn down the side
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	//spawn top or bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instances", obj_hazard);
#endregion