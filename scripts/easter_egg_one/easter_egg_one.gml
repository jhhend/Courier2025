function easter_egg_one() {
	if  keyboard_check(ord("S")) &&
	    keyboard_check(ord("N")) &&
	    keyboard_check(ord("O")) &&
	    keyboard_check(ord("0")) &&
	    keyboard_check(ord("T")) {
	    drawegg = true;  
	} else {
	    drawegg = false;
	    if audio_is_playing(mus_easter_egg_one) {
	        audio_stop_sound(mus_easter_egg_one);
	    }
    
	    if audio_is_paused(mus_gameworld) {
	        audio_resume_sound(mus_gameworld);
	    }
	}

	if drawegg == true && !audio_is_playing(mus_easter_egg_one) {
	    if audio_is_playing(mus_gameworld) {
	        audio_pause_sound(mus_gameworld);
	    }
	    play_music(mus_easter_egg_one, 1, true);
	}



}
