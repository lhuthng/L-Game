/// @description Insert description here
// You can write your code in this editor

extra_gain -= extra_desc;
if (extra_gain > extra_threshold) {
	audio_sound_gain(global.MUSIC.EXTRA, extra_gain, 0);
	alarm[1] = extra_delay;
}
else {
	audio_sound_gain(global.MUSIC.EXTRA, extra_threshold, 0);
	extra_gain = extra_threshold;
}