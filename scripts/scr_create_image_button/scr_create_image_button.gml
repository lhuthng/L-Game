// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_image_button(x, y, index, func){
	var button = instance_create_layer(x, y, layer, obj_image_button);
	button.ui_manager = self;
	button.func = func;
	button.index = index;
	with (button) {
		image_speed = 0;
		image_index = index;
		sprite_index = spr_icons;
		gray = true;
	}	
	return button;
}