// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_icon_button(x, y, index, func){
	var button = instance_create_layer(x, y, layer, obj_image_button);
	button.func = func;
	button.index = index;
	with (button) {
		image_speed = 0;
		image_index = index;
		sprite_index = spr_small_icon;

		gray = false;
		gap = 0.05;
		delay = 1;
		sub_delay = 10;
		is_loop = false;

		flash_value = 0;
		gray = true;
		sub_image_index = 0;
		
		
		f_draw = scr_draw_icon_button;
		f_alarm_0 = scr_alarm_0_icon_button;
		f_alarm_1 = scr_alarm_1_icon_button;
		f_left_pressed = scr_left_pressed_icon_button;
	}	
	return button;
}