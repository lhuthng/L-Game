// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_copy_piece_logic(scr, des){
	des.row = scr.row;
	des.column = scr.column;
	des.x = scr.x;
	des.y = scr.y;
	des.depth = scr.depth;
	des.array = scr.array;
	dex.img_idx = scr.img_idx;
	des.image_index = scr.img_idx;
	des.sprite_index = scr.sprite_index;
}