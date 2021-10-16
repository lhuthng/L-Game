/// @description Insert description here
// You can write your code in this editor

gain += 0.1;

if (gain >= 1) {
	gain = 1;
	scr_set_music_gain(1);	
	scr_rematch();
}
else {
	scr_set_music_gain(gain);	
	alarm[7] = 3;
}