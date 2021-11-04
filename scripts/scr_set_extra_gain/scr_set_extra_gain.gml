// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_extra_gain(value){
	with (global.SETTINGS_MANAGER) {
		with (global.MUSIC[MUSIC_INDEX.EXTRA]) {
			gain = value;
			audio_sound_gain(index, gain * global.MUSIC_GAIN * global.MUSIC_COE, 0);	
		}
		alarm[1] = extra_first_delay;
	}
}