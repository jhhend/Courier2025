
function Menu(objRef, args={}) constructor {
	
	obj = objRef;	
	options = [ ];
	index = 0;
	
	title = args[$ "title"] ?? "Menu Title";
	showMoney = args[$ "showMoney"] ?? false;
	additional = args[$ "additional"] ?? function() { }

	static addOption = function(type, args) {
		var optionArgs = args;
		optionArgs[$ "obj"] = obj;
		var option = new type(optionArgs);
	
		array_push(options, option);
	}

	static action = function() {
		options[index].action();
	}

	static cursorUp = function() {
		if (index == 0) { return; }
		index--;
	}

	static cursorDown = function() {
		if (index == array_length(options) - 1) { return; }
		index++;
	}

	static drawSubtitles = function(xx, yy) {
		var current = options[index];
		draw_set_font(fnt_hud);
		draw_set_color(c_white);
		
		var subtitles = current.getSubtitles();
		
		for (var i = 0; i < array_length(subtitles); i++) {
			var subtitle = subtitles[i];
			var text = is_method(subtitle) ? subtitle() : subtitle;
			draw_text(xx, yy + 16*i, text);
		}		
	}

	static drawOptions = function(xx, yy) {
		draw_set_font(fnt_standard);
		for (var i = 0; i < array_length(options); i++) {
			var line = options[i];
			//show_message(line);
			var lineText = line.text();
			//show_message(lineText);
			draw_set_color(line.isEnabled() ? c_white : c_gray);
		    draw_text(xx, yy+(i*32), index == i ? $">{lineText}<" : lineText);
		}
	}

	static drawAdditional = function() {
		additional();
	}

}
