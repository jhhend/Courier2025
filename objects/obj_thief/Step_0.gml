/*
switch (global.state.faction) {
    case POLICE:
    case THIEF:
        break;
    case ALIEN:
    case CULT:
    case -1:
    //default:
        if collision_circle(x, y, radius, obj_player, true, true) {
            direction = point_direction(x, y, obj_player.x, obj_player.y);
            speed = 3;
        } else {
            speed = 2.5;
            direction = image_angle;
        }
        break;
}
*/
//if (global.state.faction != THIEF) {
if collision_circle(x, y, radius, obj_player, true, true) {
    switch (global.state.faction) {
        case POLICE:
        case THIEF:
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
    //break;
//}

/* */
/*  */
