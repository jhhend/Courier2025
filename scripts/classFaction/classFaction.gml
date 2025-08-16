
function Faction() constructor {

	name = "Faction";
	type = FactionType.Faction;
	color = c_white;
	
	factionAbility = undefined;
	static ability = function() {
		if (factionAbility == undefined) { return; }
		factionAbility.action();
	}
}

function FactionAbility() constructor {
	
	name = "Faction Ability";
	cooldown = 0;
	
	static action = function() { /* Override in children */ }

}

enum FactionType {
	Faction,
	Republic,
	Mafia,
	Alien,
	Cult
}
