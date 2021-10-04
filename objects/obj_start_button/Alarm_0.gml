/// @description Insert description here
// You can write your code in this editor

opacity += growth_rate;

if (opacity < 1) {
	alarm[0] = delay;
}
else {
	opacity = 1;
	pressed = false;
}