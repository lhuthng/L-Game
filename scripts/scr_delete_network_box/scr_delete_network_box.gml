// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_delete_network_box(){
	instance_destroy(global.HOSTING_BOX);
	instance_destroy(global.CONNECTING_BOX);
	if (global.ws != pointer_null) {
		network_destroy(global.ws);
		global.ws = pointer_null;
	}
	global.HOSTING_BOX = pointer_null;
	global.CONNECTING_BOX = pointer_null;
}