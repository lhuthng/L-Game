// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_start_button(button){
	with (button) {
		if (visible) {
			var dx = shake ? random_range(-1, 1) : 0;
			draw_sprite_ext(sprite_index, image_index, x + dx, y, image_xscale, image_yscale, 0, c_white, opacity);
		}
	}
}