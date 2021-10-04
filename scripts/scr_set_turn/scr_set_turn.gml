// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_turn(is_player_first){
	global.MANAGER.preset.is_player_first = is_player_first;
	with (global.UI_MANAGER.turns[is_player_first]) {
		tick = true;
		index = 0;
		alarm[0] = delay;
	}
	with (global.UI_MANAGER.turns[1 - is_player_first]) {
		tick = false;
	}
}