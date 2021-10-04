// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_place_coin(coin, column, row){
	coin.column = column;
	coin.row = row;
	coin.x = x + coin.column * coin.manager.size;
	coin.y = y + coin.row * coin.manager.size;
	coin.depth = - coin.y;
	coin.sprite_index = coin.normal;
	coin.image_index = 0;
	coin.image_yscale = 1.3;
	coin.visible = true;
	scr_fill_grid(coin, global.COIN);
	scr_play_sound(global.SFX.COIN_PLACED);
}