// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_coin(column, row){
	var coin = instance_create_layer(x + column * global.CELL_SIZE, y + row * global.CELL_SIZE, "High", obj_coin);
	coin.manager = self;
	coin.column = column;
	coin.row = row;
	coin.array = [0, 0];
	coin.sprite_index = spr_coin;
	coin.normal = spr_coin;
	coin.alternative = spr_alternative_coin;
	coin.depth = -coin.y;
	coin.image_speed = 0;
	coin.visible = false;
	coin.gap = 1 / (sprite_get_number(coin.sprite_index) - 1);
	return coin;
}