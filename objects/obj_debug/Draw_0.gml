/// @description Insert description here
// You can write your code in this editor

if variable_instance_exists(obj_manager, "grid") {
	draw_set_color(c_black);
	for (var index = 0; index < array_length(obj_manager.grid); index++) {
		var row = index div 4;
		var column = index mod 4;
		draw_text(x + row * obj_manager.size, y + column * obj_manager.size, obj_manager.grid[index]);
	}
	draw_text(mouse_x, mouse_y, obj_manager.count);
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