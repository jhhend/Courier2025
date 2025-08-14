function toggle_pause() {
	if (pause == false) {
	    instance_deactivate_all(true);
	    pause = true;
	} else if (pause == true) {
	    instance_activate_all();
	    pause = false;
	}



}
