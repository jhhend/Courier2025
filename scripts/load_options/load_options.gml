/// @description load_options()
function load_options() {

	if (file_exists("options.sav")) {
	    ini_open("options.sav");
	    /*READ-------------------------------------------------------------------------------------------*/
	    var l_sound = ini_read_string("OPTIONS", "SOUND", true);
	    var l_music = ini_read_string("OPTIONS", "MUSIC", true);
	    var l_fullscreen = ini_read_string("OPTIONS", "FULLSCREEN", false)
	    var l_showfps = ini_read_string("OPTIONS", "FPS", false);
	    /*DECODE-----------------------------------------------------------------------------------------*/
	    global.sound = real(base64_decode(l_sound));
	    global.music = real(base64_decode(l_music));
	    global.fullscreen = real(base64_decode(l_fullscreen));
	    global.showfps = real(base64_decode(l_showfps));
    
	    if global.fullscreen == true {
	        window_set_fullscreen(true);
	    } else {
	        window_set_fullscreen(false);
	    }
    
	    ini_close();
	}



}
