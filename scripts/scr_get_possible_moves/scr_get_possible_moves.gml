// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_possible_moves(grid){
	var moves = [];
	var count = 0;
	for (var index = 0; index < 16; index++) {
		var pivot_row = index mod 4, pivot_column = index div 4;
		if (grid[index] != global.EMPTY) continue;
		for (var shape_index = 0; shape_index < 8; shape_index++) {
			var check = true;
			for (var cell_index = 0; cell_index < 8; cell_index += 2) {
				var column = pivot_column + global.PRESET[shape_index][cell_index];
				var row = pivot_row + global.PRESET[shape_index][cell_index + 1];
				if (column < 0 or column > 3 or row < 0 or row > 3 or grid[column * 4 + row] != global.EMPTY) {
					check = false;
					break;
				}
			}
			if (check) {
				moves[count++] = {
					index: index,
					image_index: shape_index
				};
			}
		}
	}
	return moves;
}