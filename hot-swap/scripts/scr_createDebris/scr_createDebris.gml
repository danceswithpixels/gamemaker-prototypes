function scr_createDebris(argument0, argument1) {
	repeat(20) {
		instance_create_layer(argument0, argument1, "Instances", obj_debris);
	}


}
