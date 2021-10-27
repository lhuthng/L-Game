/// @description Insert description here
// You can write your code in this editor

if (is_placing) {
	progress += growth_rate;
	if (progress >= 1) progress = 1;
	else alarm[0] = delay;
}
else {
	progress -= growth_rate;
	if (progress <= 0) {
		if (global.TEMP_BOARD[index] == self) global.TEMP_BOARD[index] = pointer_null;
		instance_destroy();
	}
	else alarm[0] = delay;
}