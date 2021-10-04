// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rotate_piece(piece, order){
	scr_set_piece_rotation(piece, scr_positive_modulo(piece.image_index + (order ? 1 : -1), 8));
}