// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_player(piece, is_red = false){
	var player = instance_create_layer(x, y, "High", obj_player);
	player.index = global.PLAYER_INDEX;
	player.manager = self;
	player.piece = piece;
	player.abstract = pointer_null;
	player.is_red = is_red;
	return player;
}