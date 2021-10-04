// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_throw_coin(coin, target){
	coin.origin = {
		x: coin.x,
		y: coin.y
	}
	coin.current = 0;
	coin.last = 0;
	coin.target = target;
	coin.image_index = 1;
	if (coin.x != target.x or coin.y != target.y) scr_play_sound(global.SFX.COIN_THROWN);
	coin.alarm[2] = 1;
}