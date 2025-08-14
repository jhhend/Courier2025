if alarm[0] < 0 {
    //direction = point_direction(x, y, obj_player.x, obj_player.y);
    image_angle += 15;
} else {
    image_angle += .5;
}

if !instance_exists(obj_pod) && alarm[2] < 0 {
    hostile = false;
    alarm[2] = room_speed*random_range(.1, 5);
}

