
function CargoHold() constructor {
	size = 3;
	contents = [ ];
	
	static isFull = function() {
		return array_length(contents) == size;
	}
	
	static add = function(cargo) {
		array_push(contents, cargo);
	}
}
