// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_style(is_green, value){
	with (global.MANAGER) {
		if (is_green) {
			green_player.mode = value;
			scr_play_sound(global.SFX.TICK);
			return true;
		}
		else if (players_created and red_player.index == global.PLAYER_INDEX) {
			red_player.mode = value;
			scr_play_sound(global.SFX.TICK);
			return true;
		}
		return false;
	}
}