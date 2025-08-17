
if (collision_circle(x, y, radius, obj_player, true, true)) {
    switch (global.faction) {
		case FactionType.Republic:
        case FactionType.Mafia:
            speed = 2.5;
            direction = image_angle;
            break;
        default:
            direction = point_direction(x, y, obj_player.x, obj_player.y);
            image_angle = direction;
            speed = 3;
            break;
    }
} else {
    speed = 2.5;
    direction = image_angle;
}
