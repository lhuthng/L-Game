/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_sprite(spr_status_background, status_index, x + button_offset.x, y + button_offset.y);
draw_sprite(button_sprite, 0, x + button_offset.x, y + button_offset.y);

if (token != "") {
	draw_set_font(fnt_minecraft);
	draw_set_color(c_black);
	draw_text(x + 4, y + 12, token);
}