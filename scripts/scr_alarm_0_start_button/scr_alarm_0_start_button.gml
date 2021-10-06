// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_alarm_0_start_button(button){
	with (button) {
		opacity += growth_rate;

		if (opacity < 1) {
			alarm[0] = delay;
		}
		else {
			opacity = 1;
			pressed = false;
		}
	}
}