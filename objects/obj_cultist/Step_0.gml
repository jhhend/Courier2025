if global.faction != CULT {
    if collision_circle(x, y, radius, obj_player, true, true) {
        direction = point_direction(x, y, obj_player.x, obj_player.y);
    } else {
        direction = image_angle;
    }
}

image_angle = direction;

