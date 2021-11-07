// @description Insert description here
// You can write your code in this editor

global.IDLE = 0;
global.ATTACK = 1;
global.DEFEND = 2;
global.WAIT = 3;
global.END = 4;

global.EMPTY = 0;
global.BLOCK = 1;
global.COIN = 2;

global.PLAYER_INDEX = 0;
global.NPC_INDEX = 1;
global.NPC_2_INDEX = 2;

global.PRESET[0] = [0, 0, 1, 0, 0, -1, 0, -2];
global.PRESET[1] = [0, 0, 0, 1, 1, 0, 2, 0];
global.PRESET[2] = [0, 0, -1, 0, 0, 1, 0, 2];
global.PRESET[3] = [0, 0, 0, -1, -1, 0, -2, 0];
global.PRESET[4] = [0, 0, -1, 0, 0, -1, 0, -2];
global.PRESET[5] = [0, 0, 0, -1, 1, 0, 2, 0];
global.PRESET[6] = [0, 0, 1, 0, 0, 1, 0, 2];
global.PRESET[7] = [0, 0, 0, 1, -1, 0, -2, 0];

global.PRESET_2 = ds_map_create();
ds_map_add(global.PRESET_2, 1, { index: 6, delta_column: 0, delta_row: -2});
ds_map_add(global.PRESET_2, 3, { index: 2, delta_column: 0, delta_row: -2});
ds_map_add(global.PRESET_2, 5, { index: 1, delta_column: 0, delta_row: -1});
ds_map_add(global.PRESET_2, 15, {index: 7, delta_column: 0, delta_row: -1});
ds_map_add(global.PRESET_2, 16, {index: 4, delta_column: 1, delta_row: 0});
ds_map_add(global.PRESET_2, 20, {index: 3, delta_column: 2, delta_row: 0});
ds_map_add(global.PRESET_2, 22, {index: 7, delta_column: 2, delta_row: 0});
ds_map_add(global.PRESET_2, 26, {index: 2, delta_column: 1, delta_row: 0});
ds_map_add(global.PRESET_2, 37, {index: 5, delta_column: 0, delta_row: 1});
ds_map_add(global.PRESET_2, 41, {index: 0, delta_column: 0, delta_row: 2});
ds_map_add(global.PRESET_2, 43, {index: 4, delta_column: 0, delta_row: 2});
ds_map_add(global.PRESET_2, 47, {index: 3, delta_column: 0, delta_row: 1});
ds_map_add(global.PRESET_2, 48, {index: 0, delta_column: -1, delta_row: 0});
ds_map_add(global.PRESET_2, 58, {index: 6, delta_column: -1, delta_row: 0});
ds_map_add(global.PRESET_2, 60, {index: 5, delta_column: -2, delta_row: 0});
ds_map_add(global.PRESET_2, 62, {index: 1, delta_column: -2, delta_row: 0});

global.MANAGER = self;

global.CELL_SIZE = 7;

global.TEMP_BOARD = [pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null];

green_background_index = 0;
red_background_index = 8;
idle_background_index = 4;
current_background_index = idle_background_index;

background_transition_delay = 1;

particle_system = part_system_create_layer("Medium", 0);

trail_particle = part_type_create();

delay = 10;

part_type_life(trail_particle, 25, 25);
part_type_color2(trail_particle, c_yellow, c_white);
part_type_alpha2(trail_particle, 0.01, 0);

pieces_created = false;
players_created = false;
rematched = false;
started = false;

is_waiting = false;

chainned = false;

scores = [[0, 0], [0, 0], [0, 0]];

preset = {
	opponent: pointer_null,
	is_player_first: true,
}
scr_set_preset(1, true);

randomize();
scr_rematch();
