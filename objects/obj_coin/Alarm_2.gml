/// @description Insert description here
// You can write your code in this editor

var check = current < 1;
var change = false;
if (check) {
	current += step;
	if (current - last >= gap) {
		last += gap;
		image_index += 1;
		change = true;
	}
	alarm[2] = 1;
	depth = -99999;
} 

var length = sqrt(sqr(target.x - origin.x) + sqr(target.y - origin.y)) * 0.5;
if (length == 0) current = 1;
else {
	var position = scr_calculate_position(current, length, origin, target);
	x = position.x;
	y = position.y;
	if (change) {
		part_system_depth(manager.particle_system, depth + 1);
		part_type_sprite(manager.trail_particle, spr_mini_coin, 0, 0, 0);
		part_particles_create(manager.particle_system, x, y, manager.trail_particle, 1);
	}
}

if (not check) {
	current = 1;
	image_index = 0;
	depth = -y;
	scr_change_state();
}
