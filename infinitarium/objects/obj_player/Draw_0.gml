/// @description  Scoring

if keyboard_check(vk_left) or keyboard_check(ord("A")) 
    score--;

if keyboard_check(vk_right) or keyboard_check(ord("D"))
    score++;
    
if keyboard_check(vk_down) or keyboard_check(ord("S")) {
    sprite_index = spr_playerDuck;
    draw_sprite(spr_playerDuck,sprite_index,phy_position_x,phy_position_y);
}
else {
    draw_sprite(spr_player,sprite_index,phy_position_x,phy_position_y);
    sprite_index = spr_player;
}

draw_set_halign(fa_center);
draw_set_color(c_white);

action_draw_score(room_width/2, 8, "Score: ");
