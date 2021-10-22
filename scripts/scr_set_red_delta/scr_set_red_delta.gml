// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_red_delta(value){
	with (global.UI_MANAGER) {
		red_target_delta = value;
		alarm[1] = 1;
	}
}