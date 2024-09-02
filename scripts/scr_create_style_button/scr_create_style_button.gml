// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_style_button(x, y, is_green = true){
	var button = instance_create_layer(x, y, layer, obj_image_button);
	button.is_green = is_green;
	with (button) {
		mode = PLAYER_MODE.DRAWING;
		image_speed = 0;
		image_index = 0;
		sprite_index = spr_style;
		visible = false;
		if (not is_green) {
			image_xscale = -1;
		}
		f_draw = scr_draw_style_button;
		f_left_pressed = scr_left_pressed_style_button;
	}
	return button;
}