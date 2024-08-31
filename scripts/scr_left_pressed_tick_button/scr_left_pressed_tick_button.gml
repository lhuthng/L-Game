// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_left_pressed_tick_button(button){
	if (global.IS_CLIENT) return;
	with (button) {
		scr_play_sound(global.SFX.TICK);

		scr_set_turn(turn);
		if (global.ws != pointer_null) {
			scr_send_turn(global.ws, turn);
		}
	}
}