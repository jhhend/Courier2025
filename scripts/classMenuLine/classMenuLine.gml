
function MenuLine(args) constructor {
	
	line = args[$ "text"] ?? "";
	subtitles = args[$ "subtitles"] ?? [ ];
	tagline = args[$ "tagline"] ?? "";
	subtag = args[$ "subtag"] ?? "";
	onAction = args[$ "action"] ?? function() { };

	static action = function() {
		onAction();
	}

	static text = function() {
		return is_method(line) ? line() : line;
	}

}