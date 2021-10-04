// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_player(){
	with (global.MANAGER) {
		if (current_player == green_player) {
			current_player = red_player;
			other_player = green_player;
		}
		else {
			current_player = green_player;
			other_player = red_player;
		}
		scr_change_background();
	}
}