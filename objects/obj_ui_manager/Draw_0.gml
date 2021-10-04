/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_sprite(spr_green_icon, 0, 1, 35);

draw_set_color(c_red);
draw_text(1, 55, "Player");
with (global.MANAGER) {
	if (started) draw_sprite(spr_icons_2, red_player.index, 83, 35);
	else draw_sprite(spr_icons_2, global.UI_MANAGER.index, 83, 35);
}
draw_sprite(spr_against, 0, origin.x, origin.y + 6);

