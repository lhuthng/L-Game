// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_left_pressed_start_button(button){
	with (button) {
		if (not pressed) {
			pressed = true;
			scr_start();
			switch (global.MANAGER.red_player.index) {
				case global.NPC_INDEX: scr_play_music(snd_loop_crook); break;
				case global.NPC_2_INDEX: scr_play_music(snd_loop_boss); break;
				default: scr_play_music(global.MUSIC.LOOP);
			}
			alarm[1] = delay;
		}
	}
}