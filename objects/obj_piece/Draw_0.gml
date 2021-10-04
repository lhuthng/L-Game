/// @description Insert description here
// You can write your code in this editor

image_xscale -= 0.05;
image_yscale -= 0.05;
if (image_xscale < 1) image_xscale = 1;
if (image_yscale < 1) image_yscale = 1;
draw_self();