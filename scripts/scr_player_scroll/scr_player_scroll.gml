// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_scroll(is_up){
	for (var index = 1; index <= 8; index++) {
		scr_rotate_piece(abstract, is_up);
		if (scr_check_grid(abstract) 
			and not (abstract.image_index == piece.image_index 
				and abstract.row == piece.row 
				and abstract.column == piece.column)) return true;
	}
	return false;
}