// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_left_pressed_start_button(button){
	with (button) {
		if (not pressed) {
			pressed = true;
			scr_start();
			
			with (global.UI_MANAGER) {
				if (current_index != -1) opponents[current_index].is_loop = false;
				current_index = index;
				with (opponents[index]) {
					is_loop = true;
					alarm[1] = sub_delay;
				}
			}
			
			alarm[1] = delay;
		}
	}
}