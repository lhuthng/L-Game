// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_style_button(button){
	with(button) {
		if (
			instance_exists(obj_manager) 
			and (
				is_green 
				or not is_green 
				and global.MANAGER.players_created 
				and global.MANAGER.red_player.index == global.PLAYER_INDEX
			)
		) {
			draw_self();
		}
		else {
			shader_set(shd_grayscale);
			draw_self();
			shader_reset();
		}
	}
}