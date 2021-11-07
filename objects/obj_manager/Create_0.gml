// @description Insert description here
// You can write your code in this editor

global.MANAGER = self;

green_background_index = 0;
red_background_index = 8;
idle_background_index = 4;
current_background_index = idle_background_index;

background_transition_delay = 1;

particle_system = part_system_create_layer("Medium", 0);

trail_particle = part_type_create();

delay = 10;

part_type_life(trail_particle, 25, 25);
part_type_color2(trail_particle, c_yellow, c_white);
part_type_alpha2(trail_particle, 0.01, 0);

pieces_created = false;
players_created = false;
rematched = false;
started = false;

is_waiting = false;

chainned = false;

scores = [[0, 0], [0, 0], [0, 0]];

preset = {
	opponent: pointer_null,
	is_player_first: true,
}
scr_set_preset(1, true);

randomize();
scr_rematch();
