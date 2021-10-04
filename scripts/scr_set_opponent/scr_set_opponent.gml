// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_opponent(index, opponent) {
	global.UI_MANAGER.index = index;
	global.MANAGER.preset.opponent = opponent;
	for (index = 0; index < array_length(global.UI_MANAGER.opponents); index++) {
		with (global.UI_MANAGER.opponents[index]) {
			if (func != opponent) gray = true;
			else gray = false;
		}
	}
}