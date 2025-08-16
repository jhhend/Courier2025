image_angle -= .5;

if collision_circle(x, y, radius, obj_player, true, true) && global.state.faction != CULT {
    direction = point_direction(x, y, obj_player.x, obj_player.y);
    speed = 2;
    if alarm[0] < 0 {
        alarm[0] = room_speed/2;
    }
    if (radius < 128*2.5) {
        radius += .5;
    }
} else {
    direction = 0;
    speed = .5;
}

