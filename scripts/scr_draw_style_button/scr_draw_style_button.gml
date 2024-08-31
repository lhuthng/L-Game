// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_style_button(button){
	with(button) {
		var check = instance_exists(obj_manager) and (not is_green or is_green and global.MANAGER.players_created and global.MANAGER.red_player.index == global.PLAYER_INDEX);
		if (check) {
			draw_self();
		}
		else {
			shader_set(shd_grayscale);
			draw_self();
			shader_reset();
		}
	}
}