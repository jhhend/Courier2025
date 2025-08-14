var l;
    l = instance_create(x, y, obj_turret_laser);

with (l) {
    image_angle = point_direction(x, y, obj_player.x, obj_player.y);
    direction = image_angle;
    speed = 5;
}

