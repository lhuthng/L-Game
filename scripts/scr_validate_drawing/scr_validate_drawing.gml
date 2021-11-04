// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_validate_drawing(list){
	var size = ds_list_size(list);
	if (size > 4) return false;
	if (size < 4) return pointer_invalid;
	var pre_col = list[| 0] div 4, pre_row = list[| 0] mod 4;
	var sum = 0;
	for (var index = 1; index < ds_list_size(list); index++) {
		var cur_col = list[| index] div 4, cur_row = list[| index] mod 4;
		var hash = scr_hash_direction(cur_col - pre_col, cur_row - pre_row);
		sum = sum * 4 + hash;
		pre_col = cur_col;
		pre_row = cur_row;
	}
	var data = global.PRESET_2[? sum];
	if (data == undefined) return false;
	else return data;
}