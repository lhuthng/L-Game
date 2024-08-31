// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_opponent(index, target_opponent) {
	global.UI_MANAGER.index = index;
	global.MANAGER.preset.opponent = target_opponent;
	if (target_opponent == PLAYER_TYPE.NETWORK) {
		global.START_BUTTON.visible = false;
		scr_create_network_box();
	}
	else if (global.HOSTING_BOX != pointer_null) {
		global.START_BUTTON.visible = true;
		scr_delete_network_box();
	}
	for (index = 0; index < array_length(global.UI_MANAGER.opponents); index++) {
		with (global.UI_MANAGER.opponents[index]) {
			if (target_opponent != opponent) gray = true;
			else gray = false;
		}
	}
}