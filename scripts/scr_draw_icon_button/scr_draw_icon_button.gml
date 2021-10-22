// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_icon_button(button){
	with (button) {
		draw_self();


		if (gray) {
			if (position_meeting(mouse_x, mouse_y, id)) shader_set(shd_grayscale_alt)
			else shader_set(shd_grayscale);
			draw_self();
			shader_reset();
		}
		else {
			if (flash_value > 0){
				shader_set(shd_flash);
				draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, flash_value);
				shader_reset();
			}
		}
		if (is_loop) draw_sprite(spr_highlight_frame, sub_image_index, x, y);
	}
}