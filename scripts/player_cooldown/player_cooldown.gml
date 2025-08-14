/// @description set_cooldown()
function player_cooldown() {

	switch (global.faction) {
	    case POLICE:
	        cooldown = room_speed*15; break;
	    case THIEF:
	        cooldown = room_speed*15; break;
	    case ALIEN:
	        cooldown = room_speed*20; break;
	    case CULT: 
	        cooldown = room_speed*10;break;
	    default:
	        cooldown = -1; break;
	}



}
