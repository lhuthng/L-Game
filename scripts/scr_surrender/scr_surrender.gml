// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_surrender(button = pointer_null){
	with (global.UI_MANAGER) {
		if (current_index != -1) {
			opponents[current_index].is_loop = false;
			current_index = -1;
		}
	}
	with (global.MANAGER) {
		if (players_created and started) {
			if (red_player.index != global.PLAYER_INDEX) {
				scr_set_win(red_player, green_player);
			}
			else scr_set_win(other_player, current_player);
			scr_rematch();
		}
	}
}