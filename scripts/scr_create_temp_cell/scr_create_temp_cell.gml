// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_temp_cell(column, row){
	if not (scr_is_between(column, 0, 4) and scr_is_between(row, 0, 4)) return pointer_null;
	var cell = instance_create_layer(x + column * global.CELL_SIZE, y + row * global.CELL_SIZE, "High", obj_temp_cell);
	var index = column * 4 + row;
	cell.depth = -cell.y;
	cell.index = index;
	if (global.TEMP_BOARD[index] != pointer_null) instance_destroy(global.TEMP_BOARD[index]);
	global.TEMP_BOARD[index] = cell;
	return cell;
}