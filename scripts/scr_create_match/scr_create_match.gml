// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_match(green_type, red_type){
	global.CLIENT_PLAYER = global.HOST_PLAYER = pointer_null;
	if (players_created) {
		instance_destroy(green_player);
		instance_destroy(red_player);
	}
	else {
		players_created = true;
	}
	state = global.IDLE;
	global.UI_MANAGER.styles[0].visible = false;
	global.UI_MANAGER.styles[1].visible = false;
	
	switch (green_type) {
		case PLAYER_TYPE.PLAYER: {
			green_player = scr_create_player(green_piece);
			green_player.mode = global.UI_MANAGER.styles[0].mode;
			global.UI_MANAGER.styles[0].visible = true;
			break;
		}
		case PLAYER_TYPE.NETWORK: {
			green_player = scr_create_network_player(green_piece, true, global.ws);
			break;
		}
	}
	
	switch (red_type) {
		case PLAYER_TYPE.PLAYER: {
			red_player = scr_create_player(red_piece);
			red_player.mode = global.UI_MANAGER.styles[1].mode;
			global.UI_MANAGER.styles[1].visible = true;
			break;
		}
		case PLAYER_TYPE.BOT_1: {
			red_player = scr_create_npc(red_piece);
			break;
		}
		case PLAYER_TYPE.BOT_2: {
			red_player = scr_create_npc_2(red_piece);
			break;
		}
		case PLAYER_TYPE.NETWORK: {
			red_player = scr_create_network_player(red_piece, false, global.ws);
			break;
		}
	}
	
	if (green_type == PLAYER_TYPE.NETWORK) {
		global.HOST_PLAYER = green_player;
		red_player.response = global.ws;
	}
	if (red_type == PLAYER_TYPE.NETWORK) {
		global.CLIENT_PLAYER = red_player;
		green_player.response = global.ws;
		scr_send_start(global.ws);
	}
}