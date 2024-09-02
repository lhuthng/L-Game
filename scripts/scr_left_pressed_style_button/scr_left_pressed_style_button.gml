// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_left_pressed_style_button(button){
	with (button) {
		if (is_green) {
			var new_style = (global.MANAGER.green_player.mode + 1) % 2;
			if(scr_change_style(is_green, new_style)) {
				mode = new_style;
				image_index = new_style;
			}
		}
		else {
			var new_style = (global.MANAGER.red_player.mode + 1) % 2;
			if(scr_change_style(is_green, new_style)) {
				mode = new_style;
				image_index = new_style * 2;
			}
		}
	}
}