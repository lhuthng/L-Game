// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_extract_message(msg, output){
	pos = string_pos(":", msg);
	if (pos > 0) {
		output.command = string_copy(msg, 1, pos - 1);
		output.value = string_copy(msg, pos + 1, string_length(msg) - pos);
		return true;
	}
	return false;
}