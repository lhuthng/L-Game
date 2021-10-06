// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_step_start_button(button){
	with (button) {
		if (not pressed and position_meeting(mouse_x, mouse_y, id)) {
			shake = true;
		}
		else shake = false;
	}
}