/// @description Insert description here
// You can write your code in this editor

var target_index;
if (state == global.IDLE) target_index = idle_background_index;
else if (current_player == green_player) target_index = green_background_index;
else target_index = red_background_index;

if (current_background_index < target_index) current_background_index += 1;
else if (current_background_index > target_index) current_background_index -= 1;
else return;

alarm[5] = background_transition_delay;


