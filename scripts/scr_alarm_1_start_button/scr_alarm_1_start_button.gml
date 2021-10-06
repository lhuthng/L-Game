// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_alarm_1_start_button(button){
	with (button) {
		opacity -= shrink_rate;

		if (opacity > 0) {
	
			image_yscale *= (1 - scale_rate);
			image_xscale /= (1 - scale_rate);
	
			alarm[1] = delay;
		}
		else {
			opacity = 0;
			visible = false;
		}
	}
}