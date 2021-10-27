/// @description Insert description here
// You can write your code in this editor

with (obj_player) {
	draw_set_color(c_purple);
	for (var index = 0; index < ds_list_size(spawn_list); index++) {
		draw_text(mouse_x - 10, mouse_y + 10 * index, string(spawn_list[| index]));
	}
}

// var xx = 0.0, yy = f_y(xx * a, a), xxx;
//draw_set_color(c_red);
//draw_line(x, y, x + a, y);
//for (xxx = step; xxx <= 1; xxx += step) {
//	var yyy = f_y(xxx * a, a);
//	draw_line(x + xx * a, y - yy, x + xxx * a, y - yyy);
//	xx = xxx;
//	yy = yyy;
//}
// draw_set_color(c_blue);
// draw_line(x, y, x + test.x, y - test.y);
// var AA = test;
// xx = 0;
// var P = f_g(xx, AA);
// var i = 1;
// for (xxx = step; xxx <= 1; xxx += step) {
// 	var PPP = f_g(xxx, AA);
// 	draw_sprite(spr_coin, i++, x + P.x, y - P.y);
// 	draw_set_color(c_blue);
// 	draw_line(x + P.x, y - P.y, x + PPP.x, y - PPP.y);
// 	P.x = PPP.x;
// 	P.y = PPP.y;
// }

// var P = f_g(current, test);
// draw_sprite(spr_coin, index, x + P.x, y - P.y);