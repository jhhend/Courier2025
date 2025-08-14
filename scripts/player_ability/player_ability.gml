/// @description player_ability
function player_ability() {
	if (ability && obj_data.alarm[2] < 0 && global.faction != -1) {
	    drawability = true;
	} else {
	    drawability = false;
	}
	if (abilityend && obj_data.alarm[2] < 0) {
	    switch (global.faction) {
	        case POLICE:
	            var c = instance_nearest(x, y, obj_civillian);
	            if collision_circle(x, y, radius, c, true, true) && c.illegal == true {
	                global.money += c.price;
	                var e = instance_create(c.x, c.y, obj_abilityindicator);
	                with (e) {
	                    text = "ARRESTED";
	                    color = c_red;
	                    creator = noone;
	                }
	                instance_destroy(c);
	                obj_data.alarm[2] = cooldown;
	            } else if collision_circle(x, y, radius, c, true, true) && c.illegal == false {
	                obj_data.alarm[2] = cooldown;
	                var e = instance_create(c.x, c.y, obj_abilityindicator);
	                with (e) {
	                    text = "CLEAR";
	                    color = c_aqua;
	                    creator = c;
	                }
	            }
	            var t = instance_nearest(x, y, obj_thief);
	            if collision_circle(x, y, radius, t, true, true) {
	                global.money += irandom_range(50, 100);
	                var g = instance_create(t.x, t.y, obj_abilityindicator);
	                with (g) {
	                    text = "ARRESTED";
	                    color = c_red;
	                    creator = noone;
	                }
	                instance_destroy(t);    
	                obj_data.alarm[2] = cooldown;
	            }
	            break;
	        case THIEF:
	            var c = instance_nearest(x, y, obj_civillian);
	            if collision_circle(x, y, radius, c, true, true) {
	                if c.stolen == false {
	                    global.money += irandom_range(20, 50);
	                    var e = instance_create(c.x, c.y, obj_abilityindicator);
	                    with (e) {
	                        text = "PICKPOCKETED";
	                        color = c_thief;
	                        creator = c;
	                    }
	                    obj_data.alarm[2] = cooldown;
	                } else if c.stolen == true {
	                    var e = instance_create(c.x, c.y, obj_abilityindicator);
	                    with (e) {
	                        text = "EMPTY";
	                        color = c_gray;
	                        creator = c;
	                    }
	                    obj_data.alarm[2] = cooldown;
	                }
	            }
	            break;
	        case ALIEN:
	            if (room != rm_worldmap && room != rm_paradise_worldmap) { 
	                repeat (10) {
	                    instance_create(x, y, obj_alien_friendly);
	                }
	                obj_data.alarm[2] = cooldown;
	            }
	            break;
	        case CULT:
	            var c = instance_nearest(x, y, obj_civillian);
	            if collision_circle(x, y, radius, c, true, true) && c.cult == false {
	                global.cultpower++;
	                with (c) {
	                    cult = true;
	                }
	                var e = instance_create(c.x, c.y, obj_abilityindicator);
	                with (e) {
	                    text = "CONVERTED";
	                    color = c_cult;
	                    creator = c;
	                }
	                obj_data.alarm[2] = cooldown;
	            }
	            break;  
	        default:
	            //do nothing
	            break; 
	    }
	}



}
