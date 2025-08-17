
function Faction() constructor {

	name = "Faction";
	label = "Label";
	type = FactionType.Faction;
	color = c_white;
	
	activeAbility = undefined;
	passive = undefined;
	static active = function() {
		if (activeAbility == undefined) { return; }
		activeAbility.action();
	}
}

function FactionAbility() constructor {

	name = "Faction Ability";
	cooldown = 0;
	description = "Faction description";
	
	static action = function() { /* Override in children */}
}


enum FactionType {
	Faction,
	Republic,
	Mafia,
	Alien,
	Cult
}

function createFaction(type) {
	var c = Faction;
	switch (type) {
		case FactionType.Republic: c = FactionRepublic; break;
		case FactionType.Mafia: c = FactionMafia; break;
		case FactionType.Alien: c = FactionAlien; break;
		case FactionType.Cult: c = FactionCult; break;
	}
	return new c();
}
