// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fill_grid_2(origin_grid, origin_column, origin_row, array, value){
	var grid = [];
	array_copy(grid, 0, origin_grid, 0, array_length(origin_grid));
	for (var index = 0; index < array_length(array); index += 2) {
		var column = origin_column + array[index];
		var row = origin_row + array[index + 1];
		grid[column * 4 + row] = value;
	}
	return grid;
}