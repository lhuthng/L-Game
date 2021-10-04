/// @description Insert description here
// You can write your code in this editor

if (state == global.ATTACK) {
	do {
		var move = manager.available_moves[floor(random(array_length(manager.available_moves)))];
		var column = move.index div 4;
		var row = move.index mod 4;
	}
	until (column != abstract.column or row != abstract.row or move.image_index != abstract.image_index);
	abstract.column = move.index div 4;
	abstract.row = move.index mod 4;
	abstract.x = x + abstract.column * manager.size;
	abstract.y = y + abstract.row * manager.size;
	scr_set_piece_rotation(abstract, move.image_index);
	abstract.depth = -abstract.y;
	scr_change_state();

attack = false;
}

