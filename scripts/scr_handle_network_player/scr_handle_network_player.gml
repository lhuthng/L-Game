// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_handle_network_player(player, command, data){
	if (global.MANAGER.current_player != player) return;
	switch (command) {
		case "attack": {
			var indices = string_split(data, "_");
			with (player.abstract) {
				column = real(indices[0]);
				row = real(indices[1]);
				x = column * global.CELL_SIZE;
				y = row * global.CELL_SIZE;
				scr_set_piece_rotation(self, real(indices[2]));
				depth = -y;
			}
			scr_change_state();
			break;
		}
		case "defend": {
			var indices = string_split(data, "_");
			with (player) {
				if (indices[0] == global.MANAGER.coin_1.column 
					and indices[1] == global.MANAGER.coin_1.row
				) {
					coin = global.MANAGER.coin_1;
				}
				else if (indices[0] == global.MANAGER.coin_2.column 
					and indices[1] == global.MANAGER.coin_2.row
				) {
					coin = global.MANAGER.coin_2;
				}
				else {
					throw("SDAASD");
				}
				abstract = scr_pick_coin(coin);
				abstract.x = player.x;
				abstract.y = player.y;
				with (abstract) {
					column = real(indices[2]);
					row = real(indices[3]);
					x += column * global.CELL_SIZE;
					y += row * global.CELL_SIZE;
					depth = -y;
				}
			}
			scr_change_state();
			break;
		}
	}
}