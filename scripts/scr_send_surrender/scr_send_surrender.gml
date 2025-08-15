function scr_send_surrender(sid){
	var w_buffer = buffer_create(32, buffer_fixed, 1);
	buffer_write(w_buffer, buffer_text, "command:surrender:");
	network_send_raw(sid, w_buffer, buffer_tell(w_buffer), network_send_text);
	buffer_delete(w_buffer);
}