// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_start_button(x, y){
	var button = instance_create_layer(x, y, layer, obj_image_button);
	with (button) {
		sprite_index = spr_go;
		image_speed = 0;
		img_idx = 0;
		image_index = 0;
		global.START_BUTTON = self;

		opacity = 0;

		initialized = true;
		pressed = true;

		shake = false;

		growth_rate = 0.1;
		shrink_rate = 0.2;

		scale_rate = 0.15;


		delay = 1;
		
		f_draw = scr_draw_start_button;
		f_alarm_0 = scr_alarm_0_start_button;
		f_alarm_1 = scr_alarm_1_start_button;
		f_left_pressed = scr_left_pressed_start_button;
		f_step = scr_step_start_button
	}
	return button;
}