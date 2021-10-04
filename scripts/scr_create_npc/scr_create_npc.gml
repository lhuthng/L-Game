// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_npc(piece){
	var player = instance_create_layer(x, y, "Medium", obj_npc);
	player.index = global.NPC_INDEX;
	player.manager = self;
	player.piece = piece;
	player.abstract = pointer_null;
	return player;
}