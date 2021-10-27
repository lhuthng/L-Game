/// @description Insert description here
// You can write your code in this editor

enum PLAYER_MODE {
	DRAWING,
	PLACING
};

mode = PLAYER_MODE.DRAWING;

mouse_pressed = false;

exception = false;

state = global.IDLE;
piece = pointer_null;
// coin = pointer_null;
skip = false;

interactable = true;

abstract = pointer_null;
coin = pointer_null;

opacity = 0;
growth_rate = 0.1;
delay = 1;

// spawn_list = ds_list_create();
last_cell = pointer_null;
spawn_list = ds_list_create();
despawn_list = ds_list_create();