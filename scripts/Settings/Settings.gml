
function Settings() : Map() constructor {
	
	// Init with the default settings
	set("sound", true);
	set("music", true);
	set("fullscreen", false);
	set("showFps", false);

	static toggle = function(key) {
		set(key, !get(key));
	}

}