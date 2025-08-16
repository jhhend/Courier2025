/// @description load_options()
function load_options() {
	
	if (!file_exists("options.sav")) { return; }
	
	ini_open("options.sav");
	/*READ-------------------------------------------------------------------------------------------*/
	var l_sound = ini_read_string("OPTIONS", "SOUND", true);
	var l_music = ini_read_string("OPTIONS", "MUSIC", true);
	var l_fullscreen = ini_read_string("OPTIONS", "FULLSCREEN", false)
	var l_showfps = ini_read_string("OPTIONS", "FPS", false);
	/*DECODE-----------------------------------------------------------------------------------------*/
	global.settings.set("sound", real(base64_decode(l_sound)));
	global.settings.set("music", real(base64_decode(l_music)));
	global.settings.set("fullscreen", real(base64_decode(l_fullscreen)));
	global.settings.set("showFps", real(base64_decode(l_showfps)));
    
	window_set_fullscreen(global.settings.get("fullscreen"));
    
	ini_close();
}
