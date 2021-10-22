// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_green_delta(value){
	with (global.UI_MANAGER) {
		green_target_delta = value;
		alarm[0] = 1;
	}
}