function scr_direction(argument0) {
	if (argument0 == 0) {
		motion_add(90,obj_player.s); 
	} else if (argument0 == 1) {
		motion_add(270,obj_player.s);
	} else if (argument0 == 2) {
		motion_add(180,obj_player.s);
	} else if (argument0 == 3) {
		motion_add(0,obj_player.s);
	}


}
