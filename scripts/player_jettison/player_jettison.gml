/// @description player_jettison()
function player_jettison() {

	if jettison {
	    //global.money += 500000; //DEBUG FUNCTION REMOVE LATER
	    var c = 0;
	    for (var i = 0; i < 3; i++) {
	        if global.hull[i] == " " {
	            c += 1;
	        } 
	    }
	    if c != 3 {
	        instance_create(x, y, obj_explosion);
	    }
	    jettison_cargo();
	}



}
