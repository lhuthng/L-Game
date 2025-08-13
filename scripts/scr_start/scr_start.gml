// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_start(){
	with (global.MANAGER) {
		if (is_waiting and not (is_waiting and chainned)) {
			break;
		}
		if (not rematched) {
			chainned = true;
			scr_rematch();
		}
 		else {
			var green_type = (global.IS_CLIENT) ? PLAYER_TYPE.NETWORK : PLAYER_TYPE.PLAYER;
			var red_type = (global.IS_CLIENT) ? PLAYER_TYPE.PLAYER : global.MANAGER.preset.opponent;
			scr_create_match(green_type, red_type);
			
			green_player.state = global.IDLE;
			red_player.state = global.IDLE;

			coin_highlighter = instance_create_depth(0, 0, -999, obj_coin_highlighter);
			coin_highlighter.visible = false;

			if (preset.is_green) {
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
			scr_set_extra_gain(1);
		}
	}
}