/// @description Insert description here
// You can write your code in this editor

#region // Draw Score
if (score > highScore) {
	highScore = score;
}

draw_text(20, 20, "HIGH SCORE: " + string(highScore));
draw_text(20, 40, "SCORE: " + string(score));
#endregion

#region // Draw Game Over
if (instance_number(obj_player) < 1) {
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "PRESS 'R' TO RESTART");
	draw_set_halign(fa_left);
	exit;
}
#endregion

#region // Draw Directions
draw_sprite(spr_direction, obj_player.u, obj_player.x, obj_player.y - spriteSize);
draw_sprite(spr_direction, obj_player.d, obj_player.x, obj_player.y + spriteSize);
draw_sprite(spr_direction, obj_player.l, obj_player.x - spriteSize, obj_player.y);
draw_sprite(spr_direction, obj_player.r, obj_player.x + spriteSize, obj_player.y);
#endregion

