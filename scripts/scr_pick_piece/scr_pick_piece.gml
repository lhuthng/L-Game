// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pick_piece(piece){
	piece.layer = layer_get_id("Medium");
	piece.sprite_index = spr_blocked_piece;
	scr_fill_grid(piece, global.EMPTY);
	return {
		visible: false,
		x: piece.x,
		y: piece.y,
		column: piece.column,
		row: piece.row,
		sprite_index: piece.alternative,
		image_index: piece.image_index,
		array: piece.array
	}
}