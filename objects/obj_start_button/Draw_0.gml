/// @description Insert description here
// You can write your code in this editor

if (visible) {
	var dx = shake ? random_range(-1, 1) : 0;
	draw_sprite_ext(sprite_index, image_index, x + dx, y, image_xscale, image_yscale, 0, c_white, opacity);
}