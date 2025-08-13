function scr_reload_start_button(){
	with (global.START_BUTTON) {
		if (initilized) {
			break;
		}
		
		img_idx = 0;
		image_index = 0;
		
		image_yscale = 1;
		image_xscale = 1;
		
		opacity = 0;

		initialized = true;

		alarm[0] = delay;
	}
}