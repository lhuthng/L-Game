/// @description Insert description here
// You can write your code in this editor

// if (status_index == 0) exit;

if (not enabled) exit;

token_typing = (
	enabled
	and scr_is_between(mouse_x, x + text_box.x, x + text_box.x + text_box.width)
	and scr_is_between(mouse_y, y + text_box.y, y + text_box.y + text_box.height)
);

if (status_index == 0 
	and scr_is_between(mouse_x, x + button_offset.x, x + button_offset.x + sprite_get_width(button_sprite))
	and scr_is_between(mouse_y, y + button_offset.y, y + button_offset.y + sprite_get_height(button_sprite))
){
	global.HOSTING_BOX.enabled = false
	status_index = 1;
	if (not connected) {
		global.ws = network_create_socket(network_socket_ws);
	    network_connect_raw_async(global.ws, "ws://thangvps.duckdns.org", 8080);
	}
	else {
		scr_request_token(global.ws, token);
	}
}