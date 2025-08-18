// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_sound_setting_button(x, y){
	var button = instance_create_layer(x, y, layer, obj_image_button);
	with (button) {
		sprite_index = spr_music_icon;
		image_speed = 0;
		img_idx = global.SETTINGS_MANAGER.sound_on;
		image_index = img_idx;
			
		trigger = scr_toggle_sound;
			
		f_draw = scr_draw_setting_button;
		f_left_pressed = scr_left_pressed_trigger;
	}
	return button;
}