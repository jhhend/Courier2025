//move and shoot functions

#region Controls

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
forward = keyboard_check(ord("W"));
rollleft = keyboard_check_pressed(ord("Q"));
rollright = keyboard_check_pressed(ord("E"));
jettison = keyboard_check_pressed(ord("J"));
fire = keyboard_check_pressed(vk_up);
interact = keyboard_check_pressed(vk_enter);
ability = keyboard_check(vk_space);
abilityend = keyboard_check_released(vk_space);

#endregion;

if (is_method(state)) {
	state();
}

#region Shooting

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


#endregion

//player_shoot();
player_ability();
player_jettison();

//DEBUG FUNCTION REMOVE LATER: restart room with left control
/*
if keyboard_check_pressed(vk_lcontrol) {
    room_restart();
}
*/

//screenshot
if keyboard_check_pressed(vk_f12) {
    screenshot();
}

//cargo delivery to dropoff point
if instance_exists(obj_dropoff) && collision_circle(obj_dropoff.x, obj_dropoff.y, 256, self, true, false) && obj_dropoff.sealed = false && keyboard_check_pressed(vk_enter) {
    for (var i = 0; i < 3; i++) {
        //illegal/thief faction cargo
        if global.cargostat[0] == "Illegal" || global.cargostat[1] == "Illegal" || global.cargostat[2] == "Illegal" ||
            global.cargostat[0] == "Thief" || global.cargostat[1] == "Thief" || global.cargostat[2] == "Thief" {
            obj_dropoff.sealed = true;
            if global.faction == POLICE {
                global.faction = -1;
                global.betray = true;
            }
            repeat (3) {
                spawn_police();
            }
            break;
        //legal cargo
        } else if ((global.cargodest[i] == remove_prefix(room) || global.cargodest[i] == remove_prefix_underscore(room)) && global.cargostat[i] != "Ilegal" && global.cargostat[i] != "Police" && global.cargostat[i] != "Alien" && global.cargostat[i] != "Thief" && global.cargostat[i] != "Cult") {
            global.money += global.cargoval[i];
            global.legaltotal++;
            clear_slot(i);
        } 
    }          
}

//cargo delivery to roaming criminal
if instance_exists(obj_criminal) && collision_circle(obj_criminal.x, obj_criminal.y, 64, self, true, false) && keyboard_check_pressed(vk_enter) {
    for (var i = 0; i < 3; i++) {
        if ((global.cargodest[i] == remove_prefix(room) || global.cargodest[i] == remove_prefix_underscore(room)) && global.cargostat[i] == "Illegal") {
            global.money += 2*global.cargoval[i];
            global.illegaltotal++;
            clear_slot(i);
        }  
    }          
}

//cargo delivery to faction cargo
if (room != rm_worldmap) {
    var inst, title, fact, mult;
    switch (room) {
        case rm_Majorin:
            inst = obj_police_dropzone;
            title = POLICE;
            fact = "Police";
            break;
        case rm_Bask_Major:
            inst = obj_thief_dropzone;
            title = THIEF;
            fact = "Thief";
            break;
        case rm_Axion:
            inst = obj_alien_dropzone;
            title = ALIEN;
            fact = "Alien";
            break;
        case rm_Korda:
            inst = obj_cult_dropzone;
            title = CULT;
            fact = "Cult"
            break;
        default:
            inst = noone;
            title = "";
            fact = -1;
            break;       
    }
    
    if instance_exists(inst) && collision_circle(inst.x, inst.y, inst.radius, self, true, false) && global.faction = title && keyboard_check_pressed(vk_enter) {
        for (var i = 0; i < 3; i++) {
            if ((global.cargodest[i] == remove_prefix(room) || global.cargodest[i] == remove_prefix_underscore(room)) && global.cargostat[i] == string(fact)) {
                global.money += global.cargoval[i];
                global.factiontotal++;
                if global.cargostat[i] == "Cult" {
                    global.cultpower++;
                }
                clear_slot(i);
            }
        }
    }
}

//room faction boss
var obf, rm;
switch (room) {
    case rm_Majorin:
        obf = obj_policeboss;
        rm = rm_police_interaction;
        break;
    case rm_Minoran:
        obf = obj_lasercolor;
        rm = rm_laser_interaction;
        break;
    case rm_Bask_Major:
        obf = obj_thiefboss;
        rm = rm_thief_interaction;
        break;
    case rm_Bask_Minor:
        obf = obj_garage;
        rm = rm_garage_interaction;
        break;
    case rm_Axion:
        obf = obj_alienboss;
        rm = rm_alien_interaction;
        break;
    case rm_Korda:
        obf = obj_cultboss;
        rm = rm_cult_interaction;
        break;
    default:
        obf = noone;
        rm = -1;
        break;
}

if instance_exists(obf) && collision_circle(obf.x, obf.y, obf.radius, self, true, false) && keyboard_check_pressed(vk_enter) {
    global.xprev = x;
    global.yprev = y;
    room_goto(rm);
}

//go to casino
if instance_exists(obj_casino) && collision_circle(obj_casino.x, obj_casino.y, obj_casino.radius, self, true, false) && obj_casino.canenter == true && keyboard_check(vk_enter) {
    global.xprev = x;
    global.yprev = y;
    room_goto(rm_casino);
}

//rolling
if rollleft && canroll == true {
    state = player_roll(RLEFT);
} else if rollright && canroll == true {
    state = player_roll(RRIGHT);
}

easter_egg_one();

if eggalpha < pi {
    eggalpha = 0;
} else {
    eggalpha += .628;
}

/* */
/*  */
