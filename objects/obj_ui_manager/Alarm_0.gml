/// @description Insert description here
// You can write your code in this editor

if (green_delta > green_target_delta) {
	green_delta -= delta_step;
	if (green_delta > green_target_delta) alarm[0] = delta_delay;
	else green_delta = green_target_delta;
}
else if (green_delta < green_target_delta) {
	green_delta += delta_step;
	if (green_delta < green_target_delta) alarm[0] = delta_delay;
	else green_delta = green_target_delta;
}