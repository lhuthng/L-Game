// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hash_direction(col, row){
	if col == -1 and row == 0 return 3;
	if col == 0 and row == 1 return 2;
	if col == 1 and row == 0 return 1;
	if col == 0 and row == -1 return 0;
	return -1;
}