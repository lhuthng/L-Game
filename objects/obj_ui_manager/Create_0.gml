/// @description Insert description here
// You can write your code in this editor

global.UI_MANAGER = self;

global.OPPONENTS[0] = scr_create_player;
global.OPPONENTS[1] = scr_create_npc;
global.OPPONENTS[2] = scr_create_npc_2;

depth = 1;

draw_set_font(fnt_minecraft);

opponents = [];

for (var index = 0; index < 3; index++) {
	opponents[index] = scr_create_image_button(x + 21 + 12 * (index + 1), y + 2, index, global.OPPONENTS[index]);
}

turns = [
	scr_create_tick_button(x + 97 - 7, y + 3, 0),
	scr_create_tick_button(x + 2, y + 3, 1),
];