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
	        switch global.state.wep {
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
	        switch global.state.wep {
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
	        switch global.state.wep {
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
    /*
	global.xprev = x;
    global.yprev = y;
    room_goto(rm);
	*/
	var menu = instance_create_layer(0, 0, "Menu", objPoliceInteraction);
	obj_view.target = menu;
	obj_view.jumpToTarget();
}

//go to casino
if instance_exists(obj_casino) && collision_circle(obj_casino.x, obj_casino.y, obj_casino.radius, self, true, false) && obj_casino.canenter && keyboard_check(vk_enter) {
    global.xprev = x;
    global.yprev = y;
    room_goto(rm_casino);
}

//rolling
if rollleft && canroll {
    state = player_roll(RLEFT);
} else if rollright && canroll {
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
