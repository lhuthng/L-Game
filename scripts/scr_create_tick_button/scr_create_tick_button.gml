// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_tick_button(x, y, index){
	var button = instance_create_layer(x, y, layer, obj_tick_button);
	button.ui_manager = self;
	button.image_speed = 0;
	button.image_index = index;
	button.sprite_index = spr_colors;
	button.turn = index;
	button.manager = self;
	return button;
}