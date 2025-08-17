
function FactionCult() : Faction() constructor {

	name = "Korda Cult";
	label = "Cult";
	type = FactionType.Cult;
	color = c_cult;
	
	activeAbility = new FactionAbilityCult();

}

function FactionAbilityCult() : FactionAbility() constructor {
	
	name = "Convert";
	cooldown = 0;
	description = "When within range of a civillian, convert them to the ways of the cult. Each convert increases the overall power and influence of the cult.";
	
	static action = function() {
		var xx = obj_player.x;
		var yy = obj_player.y;
		
		// Check for civillian
	    var civillian = instance_nearest(xx, yy, obj_civillian);
		if (civillian == noone) { return; }
		
		// Ensure that in range
		var inRange = collision_circle(xx, yy, obj_player.radius, civillian, true, true);
		if (!inRange) { return; }

		// Don't convert already converted ships
		if (civillian.cult) { return; }
		
		// Convert the ship
	    global.cultPower++;
		civillian.cult = true;
		
		// Spawn the indicator
	    var indicator = instance_create(civillian.x, civillian.y, obj_abilityindicator);
	    with (indicator) {
	        text = "CONVERTED";
	        color = c_cult;
	        creator = civillian;
	    }
	    obj_data.alarm[2] = cooldown;
	}
	
}
