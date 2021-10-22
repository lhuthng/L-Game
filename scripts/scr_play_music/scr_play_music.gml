// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_music(song){
	with (global.SETTINGS_MANAGER) {
		if (music_loaded) {
			audio_play_sound(song.index, 0, 1);
			audio_sound_gain(song.index, song.gain * global.MUSIC_GAIN, 0);
		}
	}
}