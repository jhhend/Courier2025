
function FactionRepublic() : Faction() constructor {

	name = "Galactic Republic";
	label = "Republic";
	type = FactionType.Republic;
	color = c_police;
	
	activeAbility = new FactionAbilityRepublic();

	static canJoin = function() {
		if (global.faction != -1) { return false; }
		if (global.state.legalTotal < 10) { return false; }
	
		return true;
	}

	static getJoinRequirementText = function() {
		return $"{global.state.legalTotal}/10 legal cargo delivered.";
	}

}

function FactionAbilityRepublic() : FactionAbility() constructor {
	
	name = "Search";
	cooldown = 0;
	description = "When within range of civillians, a search can be performed for contraband If any is found, the equivalent value of the cargo will be awarded. When within range of thieves, allows you to arrest them for a reward.";
	
	static action = function() {
		var xx = obj_player.x;
		var yy = obj_player.y;
		
		// Check for a thief, if within range then arrest them
		var thief = instance_nearest(xx, yy, obj_thief);
		if (collision_circle(xx, yy, obj_player.radius, thief, true, true)) {
		    global.state.money += irandom_range(50, 100);
		    var indicator = instance_create(thief.x, thief.y, obj_abilityindicator);
		    with (indicator) {
		        text = "ARRESTED";
		        color = c_red;
		        creator = noone;
		    }
		    instance_destroy(thief);    
		    obj_data.alarm[2] = cooldown;
			return;
		}
		
		var civillian = instance_nearest(xx, yy, obj_civillian);
		if (collision_circle(xx, yy, obj_player.radius, civillian, true, true)) {
			var indicator = instance_create(civillian.x, civillian.y, obj_abilityindicator);
			obj_data.alarm[2] = cooldown;
			if (civillian.illegal) {
				global.state.money += civillian.price;
				with (indicator) {
					text = "ARRESTED";
					color = c_red;
					creator = noone;
				}
				instance_destroy(civillian);
			} else {
			    with (indicator) {
			        text = "CLEAR";
			        color = c_aqua;
			        creator = civillian;
			    }
			}
		}
	}
	
}
