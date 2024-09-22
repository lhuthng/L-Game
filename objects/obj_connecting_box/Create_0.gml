/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
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

connected = false;

actual = {
	y: y,
	a: image_alpha
};

shifting = {
	y: 10,
	a: 0.5,
};

tick = 10;
delay = 1;
current_tick = 0;
delta = {
	y: shifting.y / (tick / delay),
	a: shifting.a / (tick / delay)
};

enabled = false;
alarm_set(0, delay);

y += shifting.y;
image_alpha -= shifting.a;

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