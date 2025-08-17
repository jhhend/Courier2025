/// @description set_cooldown()
function player_cooldown() {

	switch (global.faction) {
		case FactionType.Republic:
	        cooldown = room_speed*15; break;
	    case FactionType.Mafia:
	        cooldown = room_speed*15; break;
	    case FactionType.Alien:
	        cooldown = room_speed*20; break;
	    case FactionType.Cult: 
	        cooldown = room_speed*10;break;
	    default:
	        cooldown = -1; break;
	}



}
