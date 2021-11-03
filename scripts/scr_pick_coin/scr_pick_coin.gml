// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pick_coin(coin, extra = false){
	scr_fill_grid(coin, global.EMPTY);
	if (extra) scr_play_sound(global.SFX.COIN_PICK);
	return {
		visible: false,
		x: coin.x,
		y: coin.y,
		column: coin.column,
		row: coin.row,
		sprite_index: spr_alternative_coin,
		image_index: coin.image_index,
		array: coin.array
	}
}