/// @description Insert description here
// You can write your code in this editor
if (not enabled) exit;

var sid = async_load[? "id"]; // Get the socket ID

if (sid == global.ws) {
    var stype = async_load[? "type"]; // Get the event type

	show_debug_message(string(stype));
	show_debug_message(string(network_type_connect));
	show_debug_message(string(network_type_disconnect));
	show_debug_message(string(network_type_data));
	show_debug_message(string(network_type_non_blocking_connect));

    switch (stype) {
        case network_type_connect:
            break;

        case network_type_disconnect:
            token = "";
			status_index = 0;
			global.IS_CLIENT = false;
            break;

        case network_type_data:
			show_debug_message("Got a messages?");
            var r_buffer = async_load[? "buffer"];
            var msg = buffer_read(r_buffer, buffer_string);
			var data = {
				command: "",
				value: ""
			};
			show_debug_message(string(msg));
			if (scr_extract_message(msg, data)) {
				show_debug_message("1. " + data.command);
				show_debug_message("1. " + data.value);
				switch (data.command) {
					case "token":
						token = data.value;
						status_index = 2;
						break;
					case "paired":
						show_debug_message("paired"); 
						status_index = 2;
						connected = true;
						host.status_index = 3;
						scr_set_turn(data.value == "green");
						global.IS_CLIENT = true;
						global.START_BUTTON.visible = false;
						break;
					case "unpaired":
						show_debug_message("unpaired");
						status_index = 0;
						connected = false;
						host.status_index = 0;
						token = "";
						scr_surrender();
						global.IS_CLIENT = false;
						// global.START_BUTTON.visible = false;
						break;
					case "set_turn":
						show_debug_message("set_turn" + data.value);
						scr_set_turn(data.value == "green");
						break;
					case "start":
						scr_start();
						break;
					case "rejected":
						status_index = 0;
						connected = false;
						break;
					default:
						scr_handle_network_player(global.HOST_PLAYER, data.command, data.value);
						break;
				}
			}
            break;

        case network_type_non_blocking_connect:
			if (async_load[? "succeeded"] == 1) {
				scr_request_token(sid, token);	
				global.HOSTING_BOX.enabled = false;
				show_debug_message("disabled");
			}
			else {
				show_debug_message("Failed");
				connected = false;
				status_index = 0;
			}
            show_debug_message("WebSocket non-blocking connection attempt.");
            break;

        default:
            show_debug_message("Unknown WebSocket event: " + string(event_type));
            break;
    }
}