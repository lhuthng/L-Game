// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_tick_button(x, y, index){
	var button = instance_create_layer(x, y, layer, obj_image_button);
	button.image_speed = 0;
	button.image_index = index;
	button.sprite_index = spr_colors;
	button.turn = index;
	button.index = 0;
	with (button) {
		tick = false;		
		delay = 2;
		
		f_draw = scr_draw_tick_button;
		f_alarm_0 = scr_alarm_0_tick_button;
		f_left_pressed = scr_left_pressed_tick_button;
	}
	return button;
}