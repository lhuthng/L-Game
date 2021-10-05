/// @description Insert description here
// You can write your code in this editor

global.SOUND_MANAGER = self;

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
	LOOP: snd_loop
}

music_loaded = false;
sfx_loaded = false;
audio_group_load(grp_music);
audio_group_load(grp_sfx);