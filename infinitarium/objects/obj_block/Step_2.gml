if x <= -16
    instance_destroy();
    
if keyboard_check(vk_left) or keyboard_check(ord("A")) 
    phy_position_x += 2;
    
if keyboard_check(vk_right) or keyboard_check(ord("D"))
    phy_position_x -= 2;
    
if var_move == 1 or var_move == -1 {
    if phy_position_y <= 3*room_height/5
        var_move = 1;
    else if phy_position_y >= 512
        var_move = -1
    
    phy_position_y += var_move;
}

