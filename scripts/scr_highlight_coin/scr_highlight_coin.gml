// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_highlight_coin(coin){
	obj_coin_highlighter.coin = coin;
	obj_coin_highlighter.visible = true;
	obj_coin_highlighter.x = coin.x;
	obj_coin_highlighter.y = coin.y;
}