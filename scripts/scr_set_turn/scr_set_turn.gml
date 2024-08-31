// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_turn(is_green){
	global.MANAGER.preset.is_green = is_green;
	with (global.UI_MANAGER.turns[is_green]) {
		tick = true;
		index = 0;
		alarm[0] = delay;
	}
	with (global.UI_MANAGER.turns[1 - is_green]) {
		tick = false;
	}
}