// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calculate_position(percent, height, origin, target){
	return {
		x: origin.x + (target.x - origin.x) * percent,
		y: origin.y + (target.y - origin.y) * percent - height + height * sqr(2 * percent - 1)
	};
}