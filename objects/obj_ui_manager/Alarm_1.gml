/// @description Insert description here
// You can write your code in this editor

if (red_delta > red_target_delta) {
	red_delta -= delta_step;
	if (red_delta > red_target_delta) alarm[1] = delta_delay;
	else red_delta = red_target_delta;
}
else if (red_delta < red_target_delta) {
	red_delta += delta_step;
	if (red_delta < red_target_delta) alarm[1] = delta_delay;
	else red_delta = red_target_delta;
}