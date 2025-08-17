image_angle = direction;

var v, a;
    a = 10;
switch type {
    case 0:
        v = a*sin(variance);
        break;
    case 1:
        v = a*cos(variance);
        break;
    case 2:
        v = a*tan(variance);
        break;
}
if global.faction != FactionType.Alien {
mp_potential_step_object(obj_player.x, obj_player.y, 0.001, obj_alien);

image_xscale *= buffer;
image_yscale *= buffer;
target = instance_place(x, y, obj_player);
if instance_exists(target) {
    x -= dcos(point_direction(x, y, target.x, target.y));
    y += dsin(point_direction(x, y, target.x, target.y));
}
image_xscale /= buffer;
image_yscale /= buffer;
} else {
    direction = image_angle;
}

