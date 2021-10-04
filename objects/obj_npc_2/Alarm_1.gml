/// @description Insert description here
// You can write your code in this editor

if (state == global.DEFEND) {
	coin = min_move.coin;
	abstract = scr_pick_coin(min_move.coin);

	abstract.column = min_move.move_2 div 4;
	abstract.row = min_move.move_2 mod 4;
	abstract.x = x + abstract.column * manager.size;
	abstract.y = y + abstract.row * manager.size;
	abstract.depth = -abstract.y;
	scr_change_state();
		
	defend = false;
}