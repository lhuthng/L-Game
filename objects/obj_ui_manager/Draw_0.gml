/// @description Insert description here
// You can write your code in this editor

draw_self();

var h = 30;

draw_sprite(spr_player_icon, 0, 1, h);

draw_sprite(spr_player_name, 0, 1, h);

with (global.MANAGER) {
	
	if (started) {
		if (current_player == green_player) {
			switch (current_player.state) {
				case global.ATTACK: draw_sprite(spr_player_attack, 0, 23, 37); break;
				case global.DEFEND: draw_sprite(spr_player_defend, 0, 23, 37); break;
			}
		}
		else {
			switch (current_player.state) {
				case global.ATTACK: draw_sprite(spr_attack, current_player.index, 74, 37); break;
				case global.DEFEND: draw_sprite(spr_defend, current_player.index, 74, 37); break;
			}
		}
		draw_sprite(spr_icon, red_player.index, 97, h);
		draw_sprite(spr_names, red_player.index, 97, h);
	}
	else {
		draw_sprite(spr_icon, global.UI_MANAGER.index, 97, h);
		draw_sprite(spr_names, global.UI_MANAGER.index, 97, h);
	}
}

