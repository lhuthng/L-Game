// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_music(name){
	if (global.SETTINGS_MANAGER.music_loaded) {
		audio_play_sound(name, 0, 1);
	}
}