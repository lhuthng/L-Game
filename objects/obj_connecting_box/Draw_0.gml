/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_sprite(spr_status_background, status_index, x + button_offset.x, y + button_offset.y);
draw_sprite(button_sprite, 0, x + button_offset.x, y + button_offset.y);

if (enabled) draw_set_color(c_white);
else draw_set_color(c_gray);
draw_rectangle(
	x + text_box.x, 
	y + text_box.y, 
	x + text_box.x + text_box.width, 
	y + text_box.y + text_box.height, 
	false
);


draw_set_color(c_black);
draw_text(x + 1 + text_box.x, y +text_box.y, token);