/// @description Insert description here
// You can write your code in this editor

opacity -= shrink_rate;

if (opacity > 0) {
	
	image_yscale *= (1 - scale_rate);
	image_xscale /= (1 - scale_rate);
	
	alarm[1] = delay;
}
else {
	opacity = 0;
	visible = false;
}