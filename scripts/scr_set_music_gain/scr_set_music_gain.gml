// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_music_gain(value, force = false){
	with (global.SETTINGS_MANAGER) {
		if (music_on) {
			global.MUSIC_GAIN = value;
			for (_ = 0; _ < MUSIC_INDEX.length; _++) {
				with (global.MUSIC[_]) {
					audio_sound_gain(index, gain * global.MUSIC_GAIN * global.MUSIC_COE, 0);
				}
			}
		}
		else {
			if (force) {
				global.PREV_MUSIC_GAIN = global.MUSIC_GAIN;
				global.MUSIC_GAIN = 0;
				for (_ = 0; _ < MUSIC_INDEX.length; _++) {
					with (global.MUSIC[_]) {
						audio_sound_gain(index, 0, 0);
					}
				}
			}
			else global.PREV_MUSIC_GAIN = value;
		}
	}
}