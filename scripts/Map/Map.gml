
function Map() constructor {

	contents = { };

	static add = function(key, value) {
		contents[$ key] = value;
	}
	
	static set = function(key, value) {
		contents[$ key] = value;
	}

	static get = function(key) {
		return contents[$ key]
	}

	static has = function(key) {
		return contents[$ key] != undefined;
	}

	static keys = function() {
		return variable_struct_get_names(contents);
	}

	static remove = function(key) {
		delete contents[$ key];
	}
	
	static clear = function() {
		var names = keys();
		for (var i = 0; i < array_length(names); i++) {
			delete names[i];
		}
	}
	
}