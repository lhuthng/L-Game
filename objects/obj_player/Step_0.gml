/// @description Insert description here
// You can write your code in this editor

if (abstract != pointer_null) depth = -abstract.y + 1;
switch (state) {
	case global.ATTACK: {
		var col = floor((mouse_x - x - 1) / global.CELL_SIZE) + 1;
		var row = floor((mouse_y - y) / global.CELL_SIZE) + 1;
		switch (mode) {
			case PLAYER_MODE.PLACING: {
				if (last_cell == pointer_null or last_cell.col != col or last_cell.row != row) {
					scr_set_piece_logic(abstract, x, y, col, row, undefined);
					if (abstract.visible == true){
						if (not scr_check_grid(abstract) or scr_check_piece(abstract, piece.column, piece.row, piece.img_idx, true)) {
							if (scr_player_scroll(false)) {
								scr_appear(abstract);
							}						
							else abstract.visible = false;
						}
					}
					else if (abstract.visible == false) 
						if scr_check_grid(abstract) and not scr_check_piece(abstract, piece.column, piece.row, piece.img_idx, true) {
							scr_appear(abstract);
						}
						else if (scr_player_scroll(false)) {
							scr_appear(abstract);
						}
				}
				break;
			}
			case PLAYER_MODE.DRAWING: {
				if (mouse_pressed and (exception or last_cell == pointer_null or last_cell.col != col or last_cell.row != row)) {
					if (scr_is_between(col, 0, 4) and scr_is_between(row, 0, 4)) {
						var need_validate = false;
						var value = col * 4 + row;
						var index = ds_list_find_index(spawn_list, value);
						if (index == -1) {
							var condition = global.MANAGER.grid[value] == global.EMPTY;
							if (not condition and exception) break;
							if (exception) exception = false;
							else {
								var last = spawn_list[| ds_list_size(spawn_list) - 1];
								var last_col = last div 4, last_row = last mod 4;
								condition &= abs(last_col - col) == 1 and last_row == row or abs(last_row - row) == 1 and last_col == col;
							}
							if (condition) {
								scr_create_temp_cell(id == global.MANAGER.green_player, col, row);
								ds_list_add(spawn_list, value);
								need_validate = true;
								
							}
						}
						else {
							index += 1;
							while (ds_list_size(spawn_list) > index) {
								with (global.TEMP_BOARD[spawn_list[| index]]) {
									is_placing = false;
									alarm[0] = 1;
								}								
								ds_list_delete(spawn_list, index);
								need_validate = true;
							}
						}
						if (need_validate) {
							need_validate = scr_validate_drawing(spawn_list);
							var size = ds_list_size(spawn_list);
							for (var index = 0; index < size; index++) {
								with (global.TEMP_BOARD[spawn_list[| index]]) sprite_index = need_validate != false ? normal : blocked;
							}
						}
					}
				}
				break;
			}
		}
		last_cell = {col: col, row: row};
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
				coin.bind = false;
				break;
			}
			scr_set_piece_logic(abstract, x, y, floor((mouse_x - x - 1) / global.CELL_SIZE) + 1, floor((mouse_y - y) / global.CELL_SIZE) + 1, undefined);
			var compare = scr_compare_position(coin, abstract);
			if (abstract.visible == true and (not scr_check_grid(abstract) or compare)) abstract.visible = false;
			else if (abstract.visible == false and scr_check_grid(abstract) and not compare) scr_appear(abstract);
			if ((abstract.visible == true or compare) and mouse_check_button_pressed(mb_left)) {
				coin.bind = false;
				scr_change_state();
			}
		}
		break;
	}
}