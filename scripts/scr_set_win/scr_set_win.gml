// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_win(player, other_player){
	with (global.MANAGER) {
		if (player == green_player) scores[other_player.index, 0]++;
		else scores[player.index, 1]++;
	}
}