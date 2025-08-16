
function save_options() {
	
	// Overwrite the file completely 
	if (file_exists("options.sav")) {
	    file_delete("options.sav");
	}

	ini_open("options.sav");

	/*ENCODE-----------------------------------------------------------------------------------------*/
	var s_sound = base64_encode(string(global.settings.get("sound")));
	var s_music = base64_encode(string(global.settings.get("music")));
	var s_fullscreen = base64_encode(string(global.settings.get("fullscreen")));
	var s_showfps = base64_encode(string(global.settings.get("showFps")));
	/*WRITE------------------------------------------------------------------------------------------*/
	ini_write_string("OPTIONS", "SOUND", s_sound);
	ini_write_string("OPTIONS", "MUSIC", s_music);
	ini_write_string("OPTIONS", "FULLSCREEN", s_fullscreen);
	ini_write_string("OPTIONS", "FPS", s_showfps);

	ini_close();
}
