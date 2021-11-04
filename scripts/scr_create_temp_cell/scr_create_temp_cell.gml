// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_temp_cell(is_green, column, row){
	if not (scr_is_between(column, 0, 4) and scr_is_between(row, 0, 4)) return pointer_null;
	var cell = instance_create_layer(x + column * global.CELL_SIZE, y + row * global.CELL_SIZE, "High", obj_temp_cell);
	var index = column * 4 + row;
	if (is_green) {
		cell.normal = spr_alternative_green_cell;
		cell.blocked = spr_alternative_blocked_green_cell;		
	}
	else {
		cell.normal = spr_alternative_red_cell;
		cell.blocked = spr_alternative_blocked_red_cell;
	}
	cell.sprite_index = cell.normal;
	cell.depth = -cell.y;
	cell.index = index;
	if (global.TEMP_BOARD[index] != pointer_null) instance_destroy(global.TEMP_BOARD[index]);
	global.TEMP_BOARD[index] = cell;
	scr_play_sound(global.SFX.CELL);
	return cell;
}