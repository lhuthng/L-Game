/// @description Insert description here
// You can write your code in this editor

global.SETTINGS_MANAGER = self;

depth = 1;

extra_desc = 0.02;
extra_delay = room_speed * 0.1;
extra_threshold = 0.1;
extra_first_delay = room_speed * 5;

music_loaded = false;
sfx_loaded = false;

audio_group_load(grp_music);
audio_group_load(grp_sfx);

sound_on = true;
music_on = true;
music_gain = 1;

sound_button = scr_create_sound_setting_button(97, 2);
music_button = scr_create_music_setting_button(85, 2);
surrender_button = scr_create_surrender_button(49, 2);
