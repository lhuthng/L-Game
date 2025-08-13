// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_opponent(index, target_opponent) {	
	global.UI_MANAGER.index = index;
	global.MANAGER.preset.opponent = target_opponent;
	
	show_debug_message(global.MANAGER);
	show_debug_message(global.START_BUTTON);
	
	if (target_opponent == PLAYER_TYPE.NETWORK) {
		global.MANAGER.allowed_to_start = false;
		global.START_BUTTON.visible = false;
		
		scr_create_network_box();
	}
	else {
		global.MANAGER.allowed_to_start = true;
		global.START_BUTTON.visible = true;
		scr_reload_start_button();
		
		if (global.HOSTING_BOX != pointer_null) {
			global.IS_CLIENT = false;
			
			scr_rematch();			
			scr_delete_network_box();
		}
	}
	for (index = 0; index < array_length(global.UI_MANAGER.opponents); index++) {
		with (global.UI_MANAGER.opponents[index]) {
			if (target_opponent != opponent) gray = true;
			else gray = false;
		}
	}
}