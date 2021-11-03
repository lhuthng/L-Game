/// @description Insert description here
// You can write your code in this editor

if (manager.state == global.DEFEND and manager.current_player.interactable and manager.current_player.abstract == pointer_null) {
	manager.current_player.abstract = scr_pick_coin(self, true);
	manager.current_player.coin = self;
}
