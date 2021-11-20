// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_unhighlight_coin(coin, forced=false){
	
	if (obj_coin_highlighter.coin == coin or coin = pointer_null or forced) {
		obj_coin_highlighter.visible = false;
		obj_coin_highlighter.coin = pointer_null;
	}
}