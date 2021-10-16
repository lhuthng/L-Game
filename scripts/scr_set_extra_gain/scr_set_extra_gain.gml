// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_extra_gain(){
	with (global.SETTINGS_MANAGER) {
		extra_gain = 1;
		audio_sound_gain(global.MUSIC.EXTRA, extra_gain, 0);
		alarm[1] = extra_first_delay;
	}
}