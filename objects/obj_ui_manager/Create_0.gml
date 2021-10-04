/// @description Insert description here
// You can write your code in this editor

global.UI_MANAGER = self;

global.OPPONENTS[0] = scr_create_player;
global.OPPONENTS[1] = scr_create_npc;
global.OPPONENTS[2] = scr_create_npc_2;

depth = 1;

origin = {x: x + 2, y: y + 2 };

draw_set_font(fnt_minecraft);

opponents = [];

for (var index = 0; index < 3; index++) {
	opponents[index] = scr_create_image_button(2 + origin.x + 12 * (index + 1), origin.y, index, global.OPPONENTS[index]);
}

turns = [];
for (var index = 0; index < 2; index++) {
	turns[index] = scr_create_tick_button(2 + origin.x + 12 * (index + 1), origin.y + 11, index);
}