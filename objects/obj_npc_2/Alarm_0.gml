/// @description Insert description here
// You can write your code in this editor
if (state == global.ATTACK) {
	var grid = scr_fill_grid_2(manager.grid, abstract.column, abstract.row, abstract.array, global.EMPTY);
	var list = ds_list_create();
	min_count = infinity;
	for (var index = 0; index < array_length(manager.available_moves); index++) {
		var move = manager.available_moves[index];
		var column = move.index div 4;
		var row = move.index mod 4;
		if (column != abstract.column or row != abstract.row or move.img_idx != abstract.imagimg_idxe_index) {
			var grid_2 = scr_fill_grid_2(grid, column, row, global.PRESET[move.img_idx], global.BLOCK);
			var coins = [manager.coin_1, manager.coin_2];
			for (var index_3 = 0; index_3 < 2; index_3++) {
				var _coin = coins[index_3];
				var grid_3 = scr_fill_grid_2(grid_2, _coin.column, _coin.row, _coin.array, global.EMPTY);
				var empty_cells = scr_get_empty_cells(grid_3);
				for (var index_2 = 0; index_2 < array_length(empty_cells); index_2++) {
					var move_2 = empty_cells[index_2];
					var column_2 = move_2 div 4;
					var row_2 = move_2 mod 4;
					var grid_4 = scr_fill_grid_2(grid_3, column_2, row_2, [0, 0], global.COIN);
					grid_4 = scr_fill_grid_2(grid_4, manager.other_player.piece.column, manager.other_player.piece.row, global.PRESET[manager.other_player.piece.img_idx], global.EMPTY);
					var count = array_length(scr_get_possible_moves(grid_4)) - 1;
					if (min_count >= count) {
						if (min_count > count) ds_list_clear(list);
						ds_list_add(list, {
							move: move,
							move_2: move_2,
							coin: _coin,
							count: count
						});
						min_count = count;
					}
				}
			}
		
		}
	}
	var random_position = irandom(ds_list_size(list) - 1);
	min_move = list[| random_position];
	ds_list_destroy(list)

	abstract.column = min_move.move.index div 4;
	abstract.row = min_move.move.index mod 4;
	abstract.x = x + abstract.column * global.CELL_SIZE;
	abstract.y = y + abstract.row * global.CELL_SIZE;
	scr_set_piece_rotation(abstract, min_move.move.img_idx);
	abstract.depth = -abstract.y;
	scr_change_state();

	attack = false;
}
