// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_network_box(){
	global.HOSTING_BOX = instance_create_layer(2, 65, "High", obj_hosting_box);
	global.CONNECTING_BOX = instance_create_layer(97, 65, "High", obj_connecting_box);
}