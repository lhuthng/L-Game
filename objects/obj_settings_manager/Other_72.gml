/// @description Insert description here
// You can write your code in this editor

if (audio_group_is_loaded(grp_music)) {
	music_loaded = true;
	scr_play_music(global.MUSIC.LOOP);
}

if (audio_group_is_loaded(grp_sfx)) {
	sfx_loaded = true;
}