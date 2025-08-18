/// @description Insert description here
// You can write your code in this editor
if (not enabled) exit;

var sid = async_load[? "id"]; // Get the socket ID

if (sid == global.ws) {
    var stype = async_load[? "type"]; // Get the event type

    switch (stype) {
        case network_type_connect:
            break;

        case network_type_disconnect:
            token = "";
			status_index = 0;
			global.IS_CLIENT = false;
			host.enabled = true;
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
						status_index = 2;
						connected = true;
						host.status_index = 3;
						global.IS_CLIENT = true;
						global.START_BUTTON.visible = false;
						scr_set_turn(data.value == "green");
						break;
					case "unpaired":
						status_index = 0;
						connected = false;
						host.status_index = 0;
						host.enabled = true;
						token = "";
						global.IS_CLIENT = false;
						scr_surrender(true);
						break;
					case "set_turn":
						scr_set_turn(data.value == "green");
						break;
					case "surrender":
						scr_surrender(true);
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
			}
			else {
				connected = false;
				status_index = 0;
			}
            break;

        default:
            break;
    }
}