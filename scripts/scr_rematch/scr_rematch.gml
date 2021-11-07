// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rematch(){
	with (global.MANAGER) {
		if (is_waiting) break;
		
		var renew = false;
		
		if (pieces_created) {
			if (players_created) {
				green_player.state = global.IDLE;
				green_player.abstract = pointer_null;
				red_player.state = global.IDLE;
				red_player.abstract = pointer_null;
			}
			if (
				not (
					scr_check_piece(green_piece, 0, 1, 1) 
					and scr_check_piece(red_piece, 3, 2, 3) 
					and scr_check_coin(coin_1, 0, 0) 
					and scr_check_coin(coin_2, 3, 3)
				)
			) 
			{
				instance_destroy(coin_1);
				instance_destroy(coin_2);
				instance_destroy(coin_highlighter);
				instance_destroy(green_piece);
				instance_destroy(red_piece);
				renew = true;
			}
		}
		else renew = true;
		state = global.IDLE;

		if (renew) {
			available_moves = [];
			empty_cells = [];
		
			for (var index = 0; index < 16; index++) grid[index] = 0;
			green_piece = scr_create_piece(true, 1, 0, 1);
			red_piece = scr_create_piece(false, 3, 3, 2);
			coin_1 = scr_create_coin(0, 0);
			coin_2 = scr_create_coin(3, 3);		
		
			pieces_created = true;
			alarm[0] = delay;
		}
		
		scr_change_background();
		scr_set_green_delta(0);
		scr_set_red_delta(0);
		
		rematched = true;
		started = false;
	}
}