function scr_surrender_trigger(){
	if (global.ws != pointer_null) {
		scr_send_surrender(global.ws);
	}
	scr_surrender();			
}