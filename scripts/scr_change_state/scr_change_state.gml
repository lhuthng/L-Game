// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_change_state(){
	with (obj_manager) {
		var next_state = global.IDLE;
		switch(state) {
			case global.IDLE: { scr_change_player(); next_state = global.ATTACK; break; }
			case global.ATTACK: { next_state = global.DEFEND; break; }
			case global.DEFEND: { next_state = global.WAIT; break; }
			case global.WAIT: {next_state = global.ATTACK; break; }
		}
		switch(next_state) {
			case global.IDLE:{
				// throw(
			}
			case global.ATTACK:{
				scr_change_player(true);
				with (current_player) {
					abstract = scr_pick_piece(piece);
					abstract.visible = false;
				}
				with (other_player) {
					if (abstract != pointer_null) {
						scr_place_coin(coin, abstract.column, abstract.row);
						abstract = pointer_null;
					}
					state = global.IDLE;					
				}
				available_moves = scr_get_possible_moves(grid);				
				count = array_length(available_moves) - 1;
				
				if (count > 0) current_player.state = global.ATTACK;
				else {
					next_state = global.END;
					current_player.state = global.IDLE;
					scr_set_win(other_player, current_player);
					if (other_player == green_player) {
						scr_set_music_gain(0.2);
						scr_play_sound(global.SFX.WIN);
						alarm[6] = 200;
					}
					else {
						scr_set_music_gain(0.2);
						scr_play_sound(global.SFX.LOSE);
						alarm[6] = 100;
					}
				}
				
				break;
			}
			case global.DEFEND:{
				scr_set_extra_gain(1);
				with (current_player) {
					scr_place_piece(piece, abstract.column, abstract.row, abstract.image_index);
					skip = true;
					abstract = pointer_null;
					state = global.DEFEND;
				}
				break;
			}
			case global.WAIT: {
				with (current_player) {
					state = global.WAIT;
					scr_unhighlight_coin(pointer_null);
					scr_throw_coin(coin, abstract);
				}
			}
		}
		state = next_state;
	}
}