// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//function scr_create_player(piece, is_green = false){
//	var player = instance_create_layer(x, y, "High", obj_player);
//	player.index = global.PLAYER_INDEX;
//	player.manager = self;
//	player.piece = piece;
//	player.abstract = pointer_null;
//	player.is_green = is_green;
//	return player;
//}

function scr_create_network_player(piece, is_green, sid){
	var player = instance_create_layer(x, y, "High", obj_network_player);
	player.sid = sid;
	player.index = global.NETWORK_INDEX;
	player.manager = self;
	player.piece = piece;
	player.abstract = pointer_null;
	return player;
}