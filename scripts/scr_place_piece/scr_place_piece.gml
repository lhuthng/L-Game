// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_place_piece(piece, column, row, index){
	piece.layer = layer_get_id("Medium");
	piece.column = column;
	piece.row = row;
	piece.x = x + piece.column * global.CELL_SIZE;
	piece.y = y + piece.row * global.CELL_SIZE;
	piece.depth = - piece.y;
	piece.sprite_index = piece.normal;
	piece.image_xscale = 1.4;
	piece.image_yscale = 1.3;
	piece.visible = true;
	scr_set_piece_rotation(piece, index);
	scr_fill_grid(piece, global.BLOCK);
	scr_play_sound(global.SFX.PIECE_PLACED);
}