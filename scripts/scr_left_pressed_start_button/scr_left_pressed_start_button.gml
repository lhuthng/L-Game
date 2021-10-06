// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_left_pressed_start_button(button){
	with (button) {
		if (not pressed) {
			pressed = true;
			scr_play_sound(global.SFX.START)
			scr_start();
			alarm[1] = delay;
		}
	}
}