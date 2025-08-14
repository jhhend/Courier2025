/// @description player_determine_position()
function player_determine_position() {

	//retrun to previous position if leaving interaction
	if (global.xprev != -1 && global.yprev != -1) {
	    x = global.xprev;
	    y = global.yprev;
	    global.xprev = -1;
	    global.yprev = -1;
	}

	//create at correct position in worldmap
	if (room == rm_worldmap) {
	    switch (global.prevroom) {
	        case rm_Minoran:
	            x = (room_width/2)-150;
	            y = (room_height/2)+110;          
	            break;
	        case rm_Axion:
	            x = room_width/5;
	            y = room_height/5;
	            break;
	        case rm_Korda:
	            x = room_width*(7/8);
	            y = room_height*(7/8);
	            break;
	        case rm_Bask_Major:
	            x = room_width*(4/5);
	            y = room_height*(2/8);
	            break;
	        case rm_Bask_Minor:
	            x = (room_width/2)+16;
	            y = room_height*(1.75/8)-24;
	            break;
	        case rm_shop:
	            x = room_width*(4/5)-32;
	            y = room_height*(4/5)-32;
	            break;
	        case rm_home:
	            x = (room_width*(1/3)+32);
	            y = (room_height*(2/3)+64);
	            break;
	        case rm_depot:
	        case rm_paradise_transport:
	            x = (room_width/4)-16;
	            y = (room_height/2)+16;
	            break;
	        case rm_sandbox_interaction:
	        case rm_socket:
	            x = room_width*(8/9)-16;
	            y = (room_height/2)+32;
	            break;
	        case rm_Majorin:
	        case rm_Sandbox:
	        default:
	            x = room_width/2;
	            y = room_height/2;
	            break;
	    }
	} else if room == rm_paradise_worldmap {
	    switch global.prevroom {
	        case rm_paradise_transport:
	        case rm_paradise_depot:
	            x = room_width*(7/8);
	            y = room_height*(7/8);
	            break;
	        case rm_Paradise:
	            x = room_width/2;
	            y = room_height/2;
	            break;
	    }
	} else if room == rm_sandbox_worldmap {
	    switch global.prevroom {
	        case rm_socket:
	        case rm_sandbox_transition:
	        case rm_sandbox_interaction:
	            x = room_width*(7/8);
	            y = room_height*(7/8);
	            break;
	        case rm_Sandbox:
	            x = room_width/2;
	            y = room_height/2;
	            break;
	    }
	}



}
