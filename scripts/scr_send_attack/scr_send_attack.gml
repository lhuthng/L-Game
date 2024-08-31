// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_attack(sid, abstract){
	var w_buffer = buffer_create(32, buffer_fixed, 1);
	buffer_write(w_buffer, buffer_text, "command:attack:" + string(abstract.column) + "_" + string(abstract.row) + "_" + string(abstract.image_index));
	network_send_raw(sid, w_buffer, buffer_tell(w_buffer), network_send_text);
	buffer_delete(w_buffer);
}