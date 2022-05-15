/// @description  Spawn traps

phy_position_x = room_width/2;
phy_rotation = 0;

if place_empty(room_width+32,512)
    instance_create(room_width+32,512,obj_block);
    
//instance_create(random(room_width*3/2),-32,obj_ash);

/// Death

if sprite_index == spr_playerDuck
    phy_speed_y = 4;

if (sprite_index == spr_playerDuck and place_meeting(phy_position_x,phy_position_y,obj_trap)) or
(sprite_index == spr_player and place_meeting(phy_position_x,phy_position_y,obj_trap)) or
place_meeting(phy_position_x,phy_position_y,obj_trap)
    game_restart();

/// Loop audio

if not audio_is_playing(snd_horizon515)
    audio_play_sound(snd_horizon515,10,true);

