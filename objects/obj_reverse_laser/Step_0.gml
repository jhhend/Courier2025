if phase == 0 {
    if speed > .1 {
        speed *= .9;
    } else {
        phase++;
        speed = 0;
        alarm[0] = room_speed;
    }
}

image_angle += 5;

if !instance_exists(obj_pod) && alarm[2] < 0 {
    hostile = false;
    alarm[1] = room_speed*random_range(.1, 3);
}

