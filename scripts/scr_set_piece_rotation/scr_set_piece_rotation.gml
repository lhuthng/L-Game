	// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_piece_rotation(piece, index){
	piece.img_idx = scr_positive_modulo(index, 8);
	piece.image_index = piece.img_idx;
	piece.array = global.PRESET[piece.img_idx];
	return piece;
}