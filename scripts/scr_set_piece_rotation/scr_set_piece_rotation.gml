	// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_piece_rotation(piece, index){
	piece.image_index = scr_positive_modulo(index, 8);
	piece.array = global.PRESET[piece.image_index];
	return piece;
}