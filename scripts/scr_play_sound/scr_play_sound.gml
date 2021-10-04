// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_sound(name){
	if (global.SOUND_MANAGER.sfx_loaded) {
		audio_play_sound(name, 0, 0);
	}
}