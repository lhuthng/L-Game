/// @description Insert description here
// You can write your code in this editor

if (state == global.ATTACK) {
	mouse_pressed = true;
	switch (is_green ? global.GREEN_PLAYER_MODE : global.RED_PLAYER_MODE) {
			case PLAYER_MODE.PLACING: {
				if (abstract.visible == true) {
					if (response != pointer_null) {
						scr_send_attack(response, abstract);
					}
					scr_change_state();
				}
				break;
			}
			case PLAYER_MODE.DRAWING: {				
				abstract.visible = false;
				exception = true;
				break;
			}
	}
}