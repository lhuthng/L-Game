/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

button_sprite = spr_join_icon;

x -= my_size.x;

button_offset = {
	x: my_size.x - button_offset.x - sprite_get_width(spr_join_icon),
	y: 11
};

text_box = {
	x: 2,
	y: 2,
	width: 24,
	height: 7
};

token_typing = false;
cursor_position = 0;