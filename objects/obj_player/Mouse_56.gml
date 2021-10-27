/// @description Insert description here
// You can write your code in this editor

if (state == global.ATTACK) {
	mouse_pressed = false;
	
	if (scr_set_piece_logic_2(spawn_list, x, y, abstract)) {
		if (abstract.image_index != piece.image_index or abstract.row != piece.row or abstract.column != piece.column) scr_change_state();
	}
	scr_clear_temp_board();
	ds_list_clear(spawn_list);
}