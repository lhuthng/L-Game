/// @description Insert description here
// You can write your code in this editor

depth = 1;

global.SETTINGS_MANAGER = self;

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


extra_desc = 0.02;
extra_delay = room_speed * 0.1;
extra_threshold = 0.1;
extra_first_delay = room_speed * 5;

music_loaded = false;
sfx_loaded = false;

audio_group_load(grp_music);
audio_group_load(grp_sfx);

sound_on = true;
music_on = true;
music_gain = 1;

sound_button = scr_create_sound_setting_button(97, 2);
music_button = scr_create_music_setting_button(85, 2);
surrender_button = scr_create_surrender_button(49, 2);
