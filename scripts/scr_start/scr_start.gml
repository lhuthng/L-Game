// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_start(){
	with (obj_manager) {
		if (is_waiting and not (is_waiting and chainned)) break;
		if (not rematched) {
			chainned = true;
			scr_rematch();		
		}
		else {
			if (players_created) {
				instance_destroy(green_player);
				instance_destroy(red_player);
			}
		
			players_created = true;
		
			green_player = scr_create_player(green_piece);
			state = global.IDLE;
			var func = preset.opponent;
			red_player = func(red_piece);

			green_player.state = global.IDLE;
			red_player.state = global.IDLE;

			coin_highlighter = instance_create_depth(0, 0, -999, obj_coin_highlighter);
			coin_highlighter.visible = false;

			if (preset.is_player_first) {
				current_player = green_player;
				other_player = red_player;
			}
			else {
				current_player = red_player;
				other_player = green_player;
			};

			started = true;
			rematched = false;
			scr_change_state();
		}
	}
}