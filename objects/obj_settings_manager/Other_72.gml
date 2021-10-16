/// @description Insert description here
// You can write your code in this editor

if (audio_group_is_loaded(grp_music)) {
	music_loaded = true;
	scr_play_music(global.MUSIC.LOOP);
	scr_play_music(global.MUSIC.EXTRA, 1);
	audio_sound_gain(global.MUSIC.EXTRA, extra_gain, 0);
}

if (audio_group_is_loaded(grp_sfx)) {
	sfx_loaded = true;
}