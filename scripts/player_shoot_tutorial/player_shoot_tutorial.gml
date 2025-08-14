function player_shoot_tutorial() {
	if fire {
	    var x1 = x + lengthdir_x(4, image_angle+90);
	    var y1 = y + lengthdir_y(4, image_angle+90);
	    var x2 = x + lengthdir_x(4, image_angle-90);
	    var y2 = y + lengthdir_y(4, image_angle-90);
	    var bound;
	    switch global.wep {
	        case 0:
	            bound = 4;
	            break;
	        case 1:
	            bound = 3;
	            break;
	        case 2:
	            bound = 2;
	            break;
	        case 3:
	            bound = 1;
	            break;
	    }
	    var variance = irandom_range(-bound, bound);
	    var b1 = instance_create(x1, y1, obj_laser);
	    var b2 = instance_create(x2, y2, obj_laser);
	    with b1 {
	        image_angle = obj_player_tutorial.image_angle;
	        direction = obj_player_tutorial.image_angle+variance;
	        image_blend = c_red;
	        partner = b2.id;
	    }
	    with b2 {
	        image_angle = obj_player_tutorial.image_angle;
	        direction = obj_player_tutorial.image_angle+variance;
	        image_blend = c_red;
	        partner = b1.id;        
	    }
	    play_sound(snd_laser, 1, false);
	}



}
