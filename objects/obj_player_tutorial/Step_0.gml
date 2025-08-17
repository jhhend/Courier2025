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

#region Shoot

if fire {
	var x1 = x + lengthdir_x(4, image_angle+90);
	var y1 = y + lengthdir_y(4, image_angle+90);
	var x2 = x + lengthdir_x(4, image_angle-90);
	var y2 = y + lengthdir_y(4, image_angle-90);
	var bound;
	switch global.state.wep {
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

#endregion

player_shoot_tutorial();

//screenshot
if keyboard_check_pressed(vk_f12) {
    screenshot();
}

//rolling
if rollleft && canroll {
    state = player_roll(RLEFT);
} else if rollright && canroll {
    state = player_roll(RRIGHT);
}

