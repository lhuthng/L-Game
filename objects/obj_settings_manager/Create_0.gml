/// @description Insert description here
// You can write your code in this editor

depth = 1;

global.SETTINGS_MANAGER = self;

global.SFX = {
	PIECE_PLACED: snd_piece,
	COIN_PLACED: snd_coin,
	COIN_THROWN: snd_jump,
	SWAP: snd_swap,
	WIN: snd_win,
	LOSE: snd_lose,
	TICK: snd_tick,
	START: snd_start
}

global.MUSIC = {
	LOOP: snd_loop,
	EXTRA: snd_extra
}

current_music = pointer_null;

extra_desc = 0.05;
extra_delay = 3;
extra_threshold = 0.001;
extra_gain = extra_threshold;
extra_first_delay = 60 * 5;

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
