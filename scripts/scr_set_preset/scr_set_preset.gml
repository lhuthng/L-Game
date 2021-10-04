// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_preset(index, is_player_first){
	scr_set_opponent(index, global.OPPONENTS[index]);
	scr_set_turn(is_player_first);
}