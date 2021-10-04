// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enable_start_button(){
	with (global.START_BUTTON) {
		visible = true;
		image_xscale = 1;
		image_yscale = 1;
		opacity = 0;
		pressed = true;
		alarm[0] = delay;
	}
}