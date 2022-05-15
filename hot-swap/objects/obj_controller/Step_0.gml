/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_escape)) {
	game_end();
}

if (keyboard_check(ord("R"))) {
	score = 0;
	room_restart();
}