// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_coin(coin, column, row){
	return 
		coin.column == column 
		and coin.row == row
		and coin.visible == true;
}