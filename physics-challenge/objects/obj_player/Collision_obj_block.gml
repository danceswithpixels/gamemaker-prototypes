/// @description  obj_block Collision

// If you touch the floor
if not place_meeting(x,y-16,obj_block) {
    // If you touch the wall
    if place_meeting(x-16,y,obj_block) or place_meeting(x+16,y,obj_block)
        var_jumps = 1; // Only one jump for you!
    else var_jumps = 2; // Reset number of jumps
}

