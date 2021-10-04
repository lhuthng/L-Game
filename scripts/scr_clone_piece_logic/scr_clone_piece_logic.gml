// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_clone_piece_logic(piece){
	var new_piece = instance_create_layer(piece.x, piece.y, "High", obj_piece);
	new_piece.image_speed = 0;
	new_piece.array = piece.array;
	new_piece.image_index = piece.image_index;
	new_piece.row = piece.row;
	new_piece.column = piece.column;
	return new_piece;
}