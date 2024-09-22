/// @description Insert description here
// You can write your code in this editor

var check = current < 1;
var change = false;
if (check) {
	current += step;
	if (current - last >= gap) {
		last += gap;
		img_idx += 1;
		image_index = img_idx;
		change = true;
	}
	alarm[2] = 1;
	depth = -99999;
} 

var length = sqrt(sqr(target.x - origin.x) + sqr(target.y - origin.y)) * 0.5;
if (length == 0) current = 1;
else {
	if (change) {
		part_system_depth(manager.particle_system, -y + 1);
		part_type_sprite(manager.trail_particle, spr_mini_coin, 0, 0, 0);
		part_particles_create(manager.particle_system, x, y, manager.trail_particle, 1);
	}
	var position = scr_calculate_position(current, length, origin, target);
	x = position.x;
	y = position.y;
}

if (not check) {
	current = 1;
	img_idx = 0;
	image_index = img_idx;
	depth = -y;
	scr_change_state();
}
