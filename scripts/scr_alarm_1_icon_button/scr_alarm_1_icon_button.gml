// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_alarm_1_icon_button(button){
	with (button) {
		sub_image_index = (sub_image_index + 1) % 6;
		if (is_loop) alarm[1] = sub_delay;
	}
}