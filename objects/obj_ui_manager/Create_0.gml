/// @description Insert description here
// You can write your code in this editor

depth = 1;

global.UI_MANAGER = self;

global.OPPONENTS[0] = scr_create_player;
global.OPPONENTS[1] = scr_create_npc;
global.OPPONENTS[2] = scr_create_npc_2;

depth = 1;

draw_set_font(fnt_minecraft);

opponents = [];

for (var index = 0; index < 3; index++) {
	opponents[index] = scr_create_icon_button(x + 21 + 12 * (index + 1), y + 2, index, global.OPPONENTS[index]);
}

cursor_sprite = spr_mouse;
window_set_cursor(cr_none);

delta_step = 0.4;
delta_delay = 1;
green_delta = 0;
green_target_delta = 0;
red_delta = 0;
red_target_delta = 0;

current_index = -1;

start = scr_create_start_button(50, 75);

turns = [
	scr_create_tick_button(x + 97 - 7, y + 3, 0),
	scr_create_tick_button(x + 2, y + 3, 1),
];