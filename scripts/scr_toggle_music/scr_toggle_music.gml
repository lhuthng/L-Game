// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_toggle_music(button){
	with (global.SETTINGS_MANAGER) {
		music_on = 1 - music_on;
		button.image_index = music_on;
		if (music_on != 0) audio_group_set_gain(grp_music, music_gain, 0);
		else audio_group_set_gain(grp_music, 0, 0);
	}
}