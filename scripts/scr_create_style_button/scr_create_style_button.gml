// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_style_button(x, y, is_green = true){
	var button = instance_create_layer(x, y, layer, obj_image_button);
	button.image_speed = 0;
	button.image_index = (is_green ? global.GREEN_PLAYER_MODE : global.RED_PLAYER_MODE) * (is_green + 1);
	button.sprite_index = spr_style;
	
	button.is_green = is_green;
	if (is_green) {
		button.image_xscale = -1;
	}
	with (button) {
		f_draw = scr_draw_style_button;
		// f_alarm_0 = scr_alarm_0_tick_button;
		f_left_pressed = scr_left_pressed_style_button;
	}
	return button;
}