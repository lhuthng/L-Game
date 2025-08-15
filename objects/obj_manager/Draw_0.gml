/// @description Insert description here
// You can write your code in this editor

draw_set_color($6abe30);
if (global.IS_CLIENT) {
	draw_sprite(spr_background, 1, 0, 0);
	draw_sprite(spr_rev_background_transition, current_background_index, 0, 0);
}
else {
	draw_sprite(spr_background, 0, 0, 0);
	draw_sprite(spr_background_transition, current_background_index, 0, 0);
}
draw_self();
