/// @description Insert description here
// You can write your code in this editor

depth = 1;

my_size = {
	x: 29,
	y: 50
};

image_xscale = my_size.x / sprite_get_width(sprite_index);
image_yscale = my_size.y / sprite_get_height(sprite_index);

button_offset = {
	x: 2,
	y: 2
};

button_sprite = spr_host_icon;

status_index = 0;
non_blocking_count = 0;

token = "";

enabled = true;

connected = false;