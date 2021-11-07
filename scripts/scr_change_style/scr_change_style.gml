// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_style(is_red, value){
	with (global.MANAGER) {
		if (not is_red) {
			global.GREEN_PLAYER_MODE = value;
			return true;
		}
		else if (players_created and red_player.index == global.PLAYER_INDEX) {
			global.RED_PLAYER_MODE = value;
			return true;
		}
		return false;
	}
}