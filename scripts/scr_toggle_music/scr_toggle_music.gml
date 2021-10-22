// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_toggle_music(button){
	with (global.SETTINGS_MANAGER) {
		music_on = 1 - music_on;
		button.image_index = music_on;
		
		if (music_on != 0) scr_set_music_gain(global.PREV_MUSIC_GAIN);
		else scr_set_music_gain(0, true);
	}
}