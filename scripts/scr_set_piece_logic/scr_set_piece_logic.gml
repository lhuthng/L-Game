// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_piece_logic(piece, origin_x, origin_y, column, row, index){
	piece.column = column;
	piece.row = row;
	piece.x = origin_x + piece.column * global.CELL_SIZE;
	piece.y = origin_y + piece.row * global.CELL_SIZE;
	piece.depth = -piece.y;
	if (index != undefined) scr_set_piece_rotation(piece, index)
}