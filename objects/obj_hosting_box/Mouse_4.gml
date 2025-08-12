/// @description Insert description here
// You can write your code in this editor

if (not enabled) exit;

global.START_BUTTON.visible = false;

if (status_index == 0 
	and scr_is_between(mouse_x, x + button_offset.x, x + button_offset.x + sprite_get_width(button_sprite))
	and scr_is_between(mouse_y, y + button_offset.y, y + button_offset.y + sprite_get_height(button_sprite))
){
	scr_surrender();
	client.enabled = false;
	status_index = 1;
	global.ws = network_create_socket(network_socket_ws);
    var result = network_connect_raw_async(global.ws, "wss://huuthang.site", 443);
	enabled = true;
}