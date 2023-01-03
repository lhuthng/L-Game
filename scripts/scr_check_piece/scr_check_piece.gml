// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_piece(piece, column, row, image_index, sprite_index_skip = false){
	return 
		piece.column == column 
		and piece.row == row 
		and piece.image_index == image_index
		and (sprite_index_skip or piece.sprite_index == piece.normal);
}