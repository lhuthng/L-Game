/// @description Insert description here
// You can write your code in this editor
if (not enabled) exit;

var sid = async_load[? "id"]; // Get the socket ID
if (sid == global.ws) {
    var stype = async_load[? "type"]; // Get the event type

	show_debug_message(string(stype));

    switch (stype) {
        case network_type_connect:
            break;

        case network_type_data:
            var r_buffer = async_load[? "buffer"];
            var msg = buffer_read(r_buffer, buffer_string);
			var data = {
				command: "",
				value: ""
			};
			if (scr_extract_message(msg, data)) {
				switch (data.command) {
					case "token":
						token = data.value;
						status_index = 2;
						break;
					case "paired":
						show_debug_message("paired");
						global.START_BUTTON.visible = true;
						break;
					case "unpaired":
						show_debug_message("unpaired");
						status_index = 0;
						connected = false;
						client.status_index = 0;
						token = "";
						scr_surrender();
						global.START_BUTTON.visible = false;
						break;
					case "set_turn":
						show_debug_message("set_turn");
						break;
					default:
						scr_handle_network_player(global.CLIENT_PLAYER, data.command, data.value);
						break;
				}
			}
            break;

        case network_type_non_blocking_connect:
			if (async_load[? "succeeded"] == 1) {
				var w_buffer = buffer_create(32, buffer_fixed, 1);
				if (global.MANAGER.preset.is_green) {
					buffer_write(w_buffer, buffer_text, "host:green");
				}
				else {
					buffer_write(w_buffer, buffer_text, "host:red");
				}
				network_send_raw(sid, w_buffer, buffer_tell(w_buffer), network_send_text);
				buffer_delete(w_buffer);
				connected = true;
				client.enabled = false;
				client.status_index = 3;
			}
			else {
				show_debug_message("Failed");
				status_index = 0;
			}
            show_debug_message("WebSocket non-blocking connection attempt.");
            break;

        default:
            show_debug_message("Unknown WebSocket event: " + string(event_type));
            break;
    }
}