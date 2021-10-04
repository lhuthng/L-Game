/// @description Insert description here
// You can write your code in this editor

draw_self();


if (gray) {
	shader_set(shd_grayscale);
	draw_self();
	shader_reset();
}
else if (flash_value > 0){
	shader_set(shd_flash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, flash_value);
	shader_reset();
}
