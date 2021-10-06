// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_tick_button(button){
	with (button) {
		draw_self();

		if (tick) draw_sprite(spr_tick, index, x, y);
		if (position_meeting(mouse_x, mouse_y, id)) {
			shader_set(shd_flash);
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.1);
			shader_reset();
		}
	}
}