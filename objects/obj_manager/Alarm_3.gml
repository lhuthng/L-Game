/// @description Insert description here
// You can write your code in this editor

scr_place_coin(coin_2, 3, 3);

if (chainned) {
	show_debug_message("I got chainned?");
	alarm[4] = delay;
}
else {
	is_waiting = false;
	
	if (allowed_to_start) {
		show_debug_message("enable the start button");
		scr_enable_start_button();
	}
}
