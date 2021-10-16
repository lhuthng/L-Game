// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_music_gain(value){
	with (global.SETTINGS_MANAGER) {
		music_gain = value;
		if (music_on) audio_group_set_gain(grp_music, music_gain, 0);
	}
}