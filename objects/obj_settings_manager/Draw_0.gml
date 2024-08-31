/// @description Insert description here
// You can write your code in this editor

draw_self();
with (global.MANAGER) {
	if (players_created) {
		draw_set_color(c_black);
		draw_set_halign(fa_right);
		// draw_text(42, 2, string(scores[red_player.index, 0]));
		draw_set_halign(fa_left);
		// draw_text(58, 2, string(scores[red_player.index, 1]));
	}
}