/// @description Insert description here
// You can write your code in this editor

if (current_tick < tick) {
	current_tick += delay;
	y -= delta.y;
	image_alpha += delta.a;
	alarm[0] = delay;
}
else {
	image_alpha = actual.a;
	y = actual.y;
	current_tick = 0;
	enabled = true;
}