/// @description Insert description here
// You can write your code in this editor

if (abstract != pointer_null) {
	var bak_opacity = opacity;
	with (abstract) if (visible) {
		// draw_sprite(sprite_index, image_index, x, y);
		draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, bak_opacity);
	}
}