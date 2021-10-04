// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_positive_modulo(number, divisor){
	return ((number mod divisor) + divisor) mod divisor;
}