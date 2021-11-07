// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_grid(piece){
	with(global.MANAGER){
		for (var index = 0; index < array_length(piece.array); index += 2) {
			var column = piece.column + piece.array[index];
			var row = piece.row + piece.array[index + 1];
			if (column < 0 or column >= 4 or row < 0 or row >= 4 or grid[column * 4 + row] != global.EMPTY) return false;
		}
	}
	return true;
}