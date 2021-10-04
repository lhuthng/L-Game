// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_empty_cells(grid){
	var cells = [];
	var count = 0;
	for (var index = 0; index < 16; index++) {
		if (grid[index] == global.EMPTY || grid[index] == global.COIN) {
			cells[count++] = index;
		}
	}
	return cells;
}