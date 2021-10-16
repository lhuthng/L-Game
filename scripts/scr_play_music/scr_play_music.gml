// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_music(name, override = false){
	with (global.SETTINGS_MANAGER) {
		if (music_loaded) {
			if (not override) {
				if (name != current_music) {
					if (current_music != pointer_null) audio_stop_sound(current_music);
					audio_play_sound(name, 0, 1);
				}
				current_music = name;
				
			}
			else audio_play_sound(name, 0, 1);
		}
	}
}