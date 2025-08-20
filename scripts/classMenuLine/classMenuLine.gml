
function MenuLine(args) constructor {
	
	line = args[$ "text"] ?? "";
	subtitles = args[$ "subtitles"] ?? [ ];
	tagline = args[$ "tagline"] ?? "";
	subtag = args[$ "subtag"] ?? "";
	onAction = args[$ "action"] ?? function() { };
	obj = args[$ "obj"] ?? noone;

	static action = function() {
		onAction();
	}

	static text = function() { return is_method(line) ? line() : line; }
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
	
	static action = function() {
		obj.switchTo(target);
	}
} 
