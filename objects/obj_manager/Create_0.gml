 /// @description Insert description here
// You can write your code in this editor

global.IDLE = 0;
global.ATTACK = 1;
global.DEFEND = 2;
global.WAIT = 3;
global.END = 4;

global.EMPTY = 0;
global.BLOCK = 1;
global.COIN = 2;

global.PLAYER_INDEX = 0;
global.NPC_INDEX = 1;
global.NPC_2_INDEX = 2;

global.PRESET[0] = [0, 0, 1, 0, 0, -1, 0, -2];
global.PRESET[1] = [0, 0, 0, 1, 1, 0, 2, 0];
global.PRESET[2] = [0, 0, -1, 0, 0, 1, 0, 2];
global.PRESET[3] = [0, 0, 0, -1, -1, 0, -2, 0];
global.PRESET[4] = [0, 0, -1, 0, 0, -1, 0, -2];
global.PRESET[5] = [0, 0, 0, -1, 1, 0, 2, 0];
global.PRESET[6] = [0, 0, 1, 0, 0, 1, 0, 2];
global.PRESET[7] = [0, 0, 0, 1, -1, 0, -2, 0];

global.MANAGER = self;

green_background_index = 0;
red_background_index = 8;
idle_background_index = 4;
current_background_index = idle_background_index;

background_transition_delay = 1;

particle_system = part_system_create_layer("Medium", 0);

trail_particle = part_type_create();

delay = 10;

part_type_life(trail_particle, 15, 15);
part_type_color1(trail_particle, c_white);
part_type_alpha1(trail_particle, 0.05);

pieces_created = false;
players_created = false;
rematched = false;
started = false;
size = 7;

is_waiting = false;

chainned = false;

ui_manager = obj_ui_manager;
ui_manager.manager = self;

preset = {
	opponent: pointer_null,
	is_player_first: true,
}
scr_set_preset(1, true);

randomize();
scr_rematch();
