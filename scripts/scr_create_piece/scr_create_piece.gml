// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_piece(isGreen, index, column, row){
	var piece = instance_create_layer(x + column * size, y + row * size, "High", obj_piece);
	piece.manager = self;
	piece.column = column;
	piece.row = row;
	if (isGreen) {
		piece.normal = spr_green_piece;
		piece.alternative = spr_alternative_green_piece;
	}
	else {
		piece.normal = spr_red_piece;
		piece.alternative = spr_alternative_red_piece;
	}
	piece.depth = -piece.y;
	piece.sprite_index = piece.normal;
	piece.image_speed = 0;	
	piece.visible = false;
	scr_set_piece_rotation(piece, index);
	return piece;
}