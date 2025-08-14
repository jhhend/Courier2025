/// @description player_move()
function player_move() {

	var turn = 3;
	if left {
	    image_angle += turn;
	} else if right {
	    image_angle -= turn;
	}

	if forward {
	    speed = 4;
	    direction = image_angle;
	} else { 
	    speed*=.9
	    if speed < 1 {
	        speed = 0;
	    }
	}



}
