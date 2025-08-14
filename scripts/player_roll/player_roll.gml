/// @description player_roll(direction)
/// @param direction
function player_roll(argument0) {
	canroll = false;
	speed *= 1.5;
	switch argument0 {
	    case RLEFT:
	        direction = point_direction(x, y, x+lengthdir_x(1, direction+60), y+lengthdir_y(1, direction+60));
	        break;
	    case RRIGHT:
	        direction = point_direction(x, y, x+lengthdir_x(1, direction-60), y+lengthdir_y(1, direction-60));
	        break;
	}

	alarm[1] = room_speed*.2;
	alarm[2] = room_speed*5;



}
