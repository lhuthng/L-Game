// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_clear_temp_board(){
	for (var index = 0; index < 16; index++) {
		if (global.TEMP_BOARD[index] != pointer_null) instance_destroy(global.TEMP_BOARD[index]);
		global.TEMP_BOARD[index] = pointer_null;
	}
}