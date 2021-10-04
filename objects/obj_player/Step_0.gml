/// @description Insert description here
// You can write your code in this editor

if (abstract != pointer_null) depth = -abstract.y;
switch (state) {
	case global.ATTACK: {
		scr_set_piece_logic(abstract, x, y, floor((mouse_x - x - 1) / manager.size) + 1, floor((mouse_y - y) / manager.size) + 1, undefined);
		if (abstract.visible == true and (not scr_check_grid(abstract) or abstract.image_index == piece.image_index and abstract.row == piece.row and abstract.column == piece.column)) abstract.visible = false;
		else if (abstract.visible == false) if scr_check_grid(abstract) and (abstract.image_index != piece.image_index or abstract.row != piece.row or abstract.column != piece.column) scr_appear(abstract);
		if (abstract.visible == true and mouse_check_button_pressed(mb_left)) scr_change_state();
		break;
	}
	case global.DEFEND: {
		if (abstract != pointer_null) {
			if (skip) {
				skip = false;
				break;
			}
			if (mouse_check_button_pressed(mb_right)) {
				scr_unpick_coin(coin);
				break;
			}
			scr_set_piece_logic(abstract, x, y, floor((mouse_x - x - 1) / manager.size) + 1, floor((mouse_y - y) / manager.size) + 1, undefined);
			if (abstract.visible == true and not scr_check_grid(abstract)) abstract.visible = false;
			else if (abstract.visible == false and scr_check_grid(abstract)) scr_appear(abstract);
			if (abstract.visible == true and mouse_check_button_pressed(mb_left)) scr_change_state();
		}
		break;
	}
}