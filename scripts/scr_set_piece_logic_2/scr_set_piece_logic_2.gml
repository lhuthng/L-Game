// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_piece_logic_2(list, origin_x, origin_y, piece){
	//if (ds_list_size(list) != 4) return false;
	//var pre_col = list[| 0] div 4, pre_row = list[| 0] mod 4;
	//var sum = 0;
	//for (var index = 1; index < 4; index++) {
	//	var cur_col = list[| index] div 4, cur_row = list[| index] mod 4;
	//	var hash = scr_hash_direction(cur_col - pre_col, cur_row - pre_row);
	//	sum = sum * 4 + hash;
	//	pre_col = cur_col;
	//	pre_row = cur_row;
	//}
	//var data = global.PRESET_2[? sum];
	//if (data == undefined) return false;
	//with (piece) {
	//	column = list[| 0] div 4 + data.delta_column;
	//	row = list[| 0] mod 4 + data.delta_row;
	//	x = origin_x + column * global.CELL_SIZE;
	//	y = origin_y + row * global.CELL_SIZE;
	//	depth = -y;
	//	scr_set_piece_rotation(self, data.index);
	//}
	//return true;
	var validation = scr_validate_drawing(list);
	if (validation != false and validation != pointer_invalid) {
		with (piece) {
			column = list[| 0] div 4 + validation.delta_column;
			row = list[| 0] mod 4 + validation.delta_row;
			x = origin_x + column * global.CELL_SIZE;
			y = origin_y + row * global.CELL_SIZE;
			depth = -y;
			scr_set_piece_rotation(self, validation.index);
		}
		return true;
	}
	return false;
}