
function FactionRepublic() : Faction() constructor {

	name = "Galactic Republic";
	type = FactionType.Republic;
	color = c_police;
	
	factionAbility = new FactionAbilityRepublic();

}

function FactionAbilityRepublic() : FactionAbility() constructor { }
