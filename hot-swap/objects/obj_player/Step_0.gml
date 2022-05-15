/// @description Insert description here
// You can write your code in this editor

if (speed > maxSpeed) {
	speed = maxSpeed;
}

if (keyboard_check(ord("W")) or keyboard_check(vk_up)) {
	scr_direction(u);
}

if (keyboard_check(ord("S")) or keyboard_check(vk_down)) {
	scr_direction(d);
}

if (keyboard_check(ord("A")) or keyboard_check(vk_left)) {
	scr_direction(l);
}

if (keyboard_check(ord("D")) or keyboard_check(vk_right)) {
	scr_direction(r);
}

move_wrap(true, true, sprite_width/2);

if (slowDown > 0) {
	speed -= slowDownSpeed;
	slowDown--;
}