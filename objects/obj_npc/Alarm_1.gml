/// @description Insert description here
// You can write your code in this editor

if (state == global.DEFEND) {
	if (random(1) > 0.5) coin = manager.coin_1;
	else coin = manager.coin_2;
	scr_highlight_coin(coin);
	abstract = scr_pick_coin(coin);
	manager.empty_cells = scr_get_empty_cells(manager.grid);
	do {
		var cell = manager.empty_cells[floor(random(array_length(manager.empty_cells)))];
	} until (manager.grid[cell] != global.COIN);
	abstract.column = cell div 4;
	abstract.row = cell mod 4;
	abstract.x = x + abstract.column * global.CELL_SIZE;
	abstract.y = y + abstract.row * global.CELL_SIZE;
	abstract.depth = -abstract.y;
	scr_change_state();
		
	defend = false;
}