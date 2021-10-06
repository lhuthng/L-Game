// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_alarm_0_tick_button(button){
	with (button) {
		if (index < sprite_get_number(spr_tick) - 1) {
			index++;
			alarm[0] = delay;
		}
	}
}