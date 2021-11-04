/// @description Insert description here
// You can write your code in this editor

var gain = global.MUSIC[MUSIC_INDEX.EXTRA].gain
gain -= extra_desc;
if (gain > extra_threshold) alarm[1] = extra_delay;
else gain = extra_threshold;
audio_sound_gain(global.MUSIC[MUSIC_INDEX.EXTRA].index, gain * global.MUSIC_GAIN * global.MUSIC_COE, 0);
global.MUSIC[MUSIC_INDEX.EXTRA].gain = gain;