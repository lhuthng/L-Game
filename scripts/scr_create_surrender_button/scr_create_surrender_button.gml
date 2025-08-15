// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_surrender_button(x, y){
	var button = instance_create_layer(x, y, layer, obj_image_button);
	button.image_speed = 0;
	button.img_idx = 0;
	button.image_index = 0;
	button.sprite_index = spr_surrender;
	with (button) {
		trigger = scr_surrender_trigger;
		f_draw = scr_draw_setting_button;
		f_left_pressed = scr_left_pressed_trigger;
	}
	return button;
}