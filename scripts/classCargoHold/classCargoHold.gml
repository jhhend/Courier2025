
function CargoHold() constructor {
	size = 3;
	contents = [ ];
	
	static isFull = function() {
		return array_length(contents) == size;
	}
	
	static add = function(cargo) {
		array_push(contents, cargo);
	}
	
	static hasIllegal = function() {
		return array_any(contents, function(cargo) {
			return cargo.illegal;
		});
	}
	
	static deliver = function(dest, type) {
		// Iterate starting from the end so removals don't affect the traversal
		// (Just makes life easier)
		for (var i = array_length(contents) - 1; i >= 0; i--) {
			var cargo = contents[i];
			
			if (cargo.destination != dest) { continue; } 
			if (cargo.type != type) { continue; }
		
			// Award the price
			global.state.money += cargo.price;
			
			// Increase the cult power if we are part of the faction
			if (type == CargoType.Cult && global.faction == FactionType.Cult) {
				global.cultPower++;
			}
			
			// Remove the package
			array_delete(contents, i, 1);		
		}
	}
}
