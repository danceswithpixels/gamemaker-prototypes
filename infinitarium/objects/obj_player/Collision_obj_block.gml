/// @description  obj_block Collision + Controls (Jump)
/// @param Jump

if phy_position_y < other.phy_position_y-16
    if keyboard_check(vk_space) or keyboard_check(vk_up) or keyboard_check(ord("W"))
        phy_speed_y = -2;

