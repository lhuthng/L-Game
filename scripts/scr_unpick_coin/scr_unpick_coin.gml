// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_unpick_coin(coin){
	with (global.MANAGER.current_player) {
		skip = true;
		abstract = pointer_null;
	}
	scr_fill_grid(coin, global.COIN);
	scr_unhighlight_coin(coin);
}