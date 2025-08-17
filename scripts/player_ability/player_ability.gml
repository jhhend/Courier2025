/// @description player_ability
function player_ability() {
	if (ability && obj_data.alarm[2] < 0 && global.faction != -1) {
	    drawability = true;
	} else {
	    drawability = false;
	}
	if (abilityend && obj_data.alarm[2] < 0) {
		var faction = getFaction();
	    switch (global.faction) {
			case FactionType.Republic:
			case FactionType.Cult:
			case FactionType.Alien:
			case FactionType.Mafia:
				faction.active();
				break;
	        default:
	            //do nothing
	            break; 
	    }
	}



}
