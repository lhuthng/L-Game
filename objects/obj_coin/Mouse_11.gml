/// @description Insert description here
// You can write your code in this editor

if (
	manager.state == global.DEFEND 
	and manager.current_player.interactable 
	and manager.current_player.skip
	and not bind
) scr_unhighlight_coin(self);