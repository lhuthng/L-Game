// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_left_pressed_style_button(button){
	with (button) {
		if (is_red) {
			var new_style = global.RED_PLAYER_MODE == PLAYER_MODE.DRAWING ? PLAYER_MODE.PLACING : PLAYER_MODE.DRAWING;
			if(scr_change_style(is_red, new_style)) {
				image_index = new_style * 2;
			}
		}
		else {
			var new_style = global.GREEN_PLAYER_MODE == PLAYER_MODE.DRAWING ? PLAYER_MODE.PLACING : PLAYER_MODE.DRAWING;
			if(scr_change_style(is_red, new_style)) {
				image_index = new_style;
			}
		}
	}
}