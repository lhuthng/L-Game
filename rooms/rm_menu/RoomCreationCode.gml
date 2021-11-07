global.SFX = {
	PIECE_PLACED: snd_piece,
	COIN_PICK: snd_coin_collect,
	COIN_PLACED: snd_coin_drop,
	COIN_THROWN: snd_coin_jump,
	SWAP: snd_swap,
	WIN: snd_win,
	LOSE: snd_lose,
	TICK: snd_tick,
	START: snd_start,
	CELL: snd_cell
}

global.MUSIC_COE = 0.4;
global.MUSIC_GAIN = 1;
global.PREV_MUSIC_GAIN = 1;

enum MUSIC_INDEX {
	LOOP,
	EXTRA,
	
	length
}

global.MUSIC = [];

global.MUSIC[MUSIC_INDEX.LOOP] = {
	index: snd_loop,
	gain: 1
};
global.MUSIC[MUSIC_INDEX.EXTRA] = {
	index: snd_extra,
	gain: 1
};

global.OPPONENTS[0] = scr_create_red_player;
global.OPPONENTS[1] = scr_create_npc;
global.OPPONENTS[2] = scr_create_npc_2;

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

global.RED_PLAYER_MODE = PLAYER_MODE.DRAWING;
global.GREEN_PLAYER_MODE = PLAYER_MODE.DRAWING;

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


global.CELL_SIZE = 7;

global.TEMP_BOARD = [pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null, pointer_null];

