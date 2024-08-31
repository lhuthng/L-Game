// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_substring(str, index){
	return string_copy(str, index, string_length(str) - index + 1);
}