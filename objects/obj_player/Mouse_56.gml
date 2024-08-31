/// @description Insert description here
// You can write your code in this editor

mouse_pressed = false;
if (state == global.ATTACK) {
	switch (is_green ? global.RED_PLAYER_MODE : global.GREEN_PLAYER_MODE) {
			case PLAYER_MODE.PLACING: {
				break;
			}
			case PLAYER_MODE.DRAWING: {
				if (scr_set_piece_logic_2(spawn_list, x, y, abstract)) {
					if (abstract.image_index != piece.image_index or abstract.row != piece.row or abstract.column != piece.column) {
						if (response != pointer_null) {
							scr_send_attack(response, abstract);
						}
						scr_change_state();
					}
				}
				scr_clear_temp_board();
				ds_list_clear(spawn_list);
				break;
			}
	}
	
	
}