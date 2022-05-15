/// @description  Controls

if not mouse_check_button(mb_left) and mouse_check_button(mb_right) {
    phy_speed_x += var_speed;
    var_jumped = 0;
}
if mouse_check_button(mb_left) and not mouse_check_button(mb_right) {
    phy_speed_x -= var_speed;
    var_jumped = 0;
}
if mouse_check_button(mb_left) and mouse_check_button(mb_right) and var_jumps > 0 and var_jumped == 0 {
    var_jumps -= 1;
    var_jumped = 1;
    phy_speed_y -= var_height;
    if place_meeting(x-16,y,obj_block)
        phy_speed_x = 10*var_speed;
    else if place_meeting(x+16,y,obj_block)
        phy_speed_x = 10*-var_speed;
}

/// Create snow

instance_create(random_range(0,800), -16, obj_snow)

/// Create block

alarm[0]--;

if alarm[0] <= 0 {
    instance_create(random_range(0,800), 616, obj_block);
    alarm[0] = 120;
}

