/// @description Insert description here
// You can write your code in this editor

if (state == global.ATTACK) {
	mouse_pressed = true;
	switch (is_red ? global.RED_PLAYER_MODE : global.GREEN_PLAYER_MODE) {
			case PLAYER_MODE.PLACING: {
				if (abstract.visible == true) scr_change_state();
				break;
			}
			case PLAYER_MODE.DRAWING: {				
				abstract.visible = false;
				exception = true;
				break;
			}
	}
}