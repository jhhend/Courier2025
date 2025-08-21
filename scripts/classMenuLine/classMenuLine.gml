
function MenuLine(args) constructor {
	
	line = args[$ "text"] ?? "";
	subtitles = args[$ "subtitles"] ?? [ ];
	tagline = args[$ "tagline"] ?? "";
	subtag = args[$ "subtag"] ?? "";
	onAction = args[$ "action"] ?? function() { };
	obj = args[$ "obj"] ?? noone;
	enabled = args[$ "enabled"] ?? true;

	static action = function() {
		if (isEnabled()) {
			onAction();
		}
	}

	static getSubtitles = function() { return is_method(subtitles) ? subtitles() : subtitles; }

	static text = function() { return is_method(line) ? line() : line; }
	
	static isEnabled = function() { return is_method(enabled) ? enabled() : enabled; }
	
}

// For closing out of a menu entirely
function MenuLineClose(args) : MenuLine(args) constructor {
	static action = function() {
		instance_destroy(obj);
	}
}

// For switching between menus
function MenuLineSwitch(args) : MenuLine(args) constructor {
	target = args[$ "target"] ?? "";
	
	static getTarget = function() {
		return is_method(target) ? target() : target;
	}
	
	static action = function() {
		if (isEnabled()) {
			obj.switchTo(getTarget());
		}
	}
} 
