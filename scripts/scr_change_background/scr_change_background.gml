// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_background(){
	with (global.MANAGER) {
		alarm[5] = background_transition_delay;
	}
}