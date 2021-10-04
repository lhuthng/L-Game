// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fill_grid(piece, value){
	with (piece.manager){
		for (var index = 0; index < array_length(piece.array); index += 2) {
			var column = piece.column + piece.array[index];
			var row = piece.row + piece.array[index + 1];
			grid[column * 4 + row] = value;
		}
	}
}