
function FactionAlien() : Faction() constructor {

	name = "Alien Hive";
	label = "Alien";
	type = FactionType.Alien;
	color = c_alien;
	
	activeAbility = new FactionAbilityAlien();

}

function FactionAbilityAlien() : FactionAbility() constructor {
	
	name = "Swarm";
	cooldown = 0;
	description = "Spawn a swarm of aliens to assist you in combat.";
	
	static action = function() {
		var xx = obj_player.x;
		var yy = obj_player.y;
		
		if (room == rm_worldmap || room == rm_paradise_worldmap) {
			return;
		}
		
		repeat (10) {
		    instance_create(xx, yy, obj_alien_friendly);
		}
		obj_data.alarm[2] = cooldown;
	}
	
}
