
function FactionMafia() : Faction() constructor {

	name = "Mafia";
	label = "Mafia";
	type = FactionType.Mafia;
	color = c_thief;
	
	activeAbility = new FactionAbilityMafia();

}

function FactionAbilityMafia() : FactionAbility() constructor {
	
	name = "Pickpocket";
	cooldown = 0;
	description = "When within range of civillians, a some money can be stolen.";
	
	static action = function() {
		var xx = obj_player.x;
		var yy = obj_player.y;
		
		// Check for civillian
		var civillian = instance_nearest(xx, yy, obj_civillian);
		if (civillian == noone) { return; }
		
		// Check for in range
		var inRange = collision_circle(xx, yy, obj_player.radius, civillian, true, true);
		if (!inRange) { return; }
		
		// Check if already stolen from
		var indicator = instance_create(c.x, c.y, obj_abilityindicator);
		obj_data.alarm[2] = cooldown;
		if (civillian.stolen) {
	        with (indicator) {
	            text = "EMPTY";
	            color = c_gray;
	            creator = civillian;
	        }
		} else {
			global.state.money += irandom_range(20, 50);
	        with (indicator) {
	            text = "PICKPOCKETED";
	            color = c_thief;
	            creator = civillian;
	        }
			civillian.stolen = true;
		}
		
	}
	
}
