/// @description player_shoot
function player_shoot() {
	switch (room) {
	    case rm_Paradise:
	        if fire {
	            var x1 = x + lengthdir_x(4, image_angle+90);
	            var y1 = y + lengthdir_y(4, image_angle+90);
	            var x2 = x + lengthdir_x(4, image_angle-90);
	            var y2 = y + lengthdir_y(4, image_angle-90);
	            var bound;
	            switch global.wep {
	                case 0:
	                    bound = 8;
	                    break;
	                case 1:
	                    bound = 6;
	                    break;
	                case 2:
	                    bound = 3;
	                    break;
	                case 3:
	                    bound = 1;
	                    break;
	            }
	            var variance = irandom_range(-bound, bound);
	            var b1 = instance_create(x1, y1, obj_laser);
	            var b2 = instance_create(x2, y2, obj_laser);
	            with b1 {
	                image_angle = obj_player.image_angle;
	                direction = obj_player.image_angle+variance;
	                image_blend = global.lasercolor;
	                partner = b2.id;
	            }
	            with b2 {
	                image_angle = obj_player.image_angle;
	                direction = obj_player.image_angle+variance;
	                image_blend = global.lasercolor;
	                partner = b1.id;        
	            }
	            play_sound(snd_laser, 1, false);
	            }
	            break;
	    case rm_Sandbox:
	        if fire {
	            var x1 = x + lengthdir_x(4, image_angle+90);
	            var y1 = y + lengthdir_y(4, image_angle+90);
	            var x2 = x + lengthdir_x(4, image_angle-90);
	            var y2 = y + lengthdir_y(4, image_angle-90);
	            var bound;
	            switch global.wep {
	                case 0:
	                    bound = 8;
	                    break;
	                case 1:
	                    bound = 6;
	                    break;
	                case 2:
	                    bound = 3;
	                    break;
	                case 3:
	                    bound = 1;
	                    break;
	            }
	            var variance = irandom_range(-bound, bound);
	            var b1 = instance_create(x1, y1, obj_laser);
	            var b2 = instance_create(x2, y2, obj_laser);
	            with b1 {
	                image_angle = obj_player.image_angle;
	                direction = obj_player.image_angle+variance;
	                image_blend = global.lasercolor;
	                partner = b2.id;
	            }
	            with b2 {
	                image_angle = obj_player.image_angle;
	                direction = obj_player.image_angle+variance;
	                image_blend = global.lasercolor;
	                partner = b1.id;        
	            }
	            play_sound(snd_laser, 1, false);
	            }
	            break;        
	    default:
	        if fire && (room != rm_worldmap && room != rm_paradise_worldmap && room != rm_sandbox_worldmap && room != rm_Sandbox) &&
	        !collision_circle(obj_dropoff.x, obj_dropoff.y, obj_dropoff.radius, self, true, false) &&
	        !collision_circle(obj_criminal.x, obj_criminal.y, obj_criminal.radius, self, true, false){
	            var x1 = x + lengthdir_x(4, image_angle+90);
	            var y1 = y + lengthdir_y(4, image_angle+90);
	            var x2 = x + lengthdir_x(4, image_angle-90);
	            var y2 = y + lengthdir_y(4, image_angle-90);
	            var bound;
	            switch global.wep {
	                case 0:
	                    bound = 8;
	                    break;
	                case 1:
	                    bound = 6;
	                    break;
	                case 2:
	                    bound = 3;
	                    break;
	                case 3:
	                    bound = 1;
	                    break;
	            }
	            var variance = irandom_range(-bound, bound);
	            var b1 = instance_create(x1, y1, obj_laser);
	            var b2 = instance_create(x2, y2, obj_laser);
	            with b1 {
	                image_angle = obj_player.image_angle;
	                direction = obj_player.image_angle+variance;
	                image_blend = global.lasercolor;
	                partner = b2.id;
	            }
	            with b2 {
	                image_angle = obj_player.image_angle;
	                direction = obj_player.image_angle+variance;
	                image_blend = global.lasercolor;
	                partner = b1.id;        
	            }
	            play_sound(snd_laser, 1, false);
	        }
	        break;
	}



}
