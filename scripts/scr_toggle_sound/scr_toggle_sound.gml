// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_toggle_sound(button){
	with (global.SETTINGS_MANAGER) {
		sound_on = 1 - sound_on;
		button.image_index = sound_on;
		audio_group_set_gain(grp_sfx, sound_on, 0);
	}
}