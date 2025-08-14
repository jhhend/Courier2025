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

var o;
switch (room) {
    case rm_Majorin:
    case rm_Minoran:
        if instance_exists(obj_civillian) {
            o = instance_nearest(x, y, obj_civillian);
        } else {
            o = obj_player;
        }
        break;
    case rm_Bask_Major:
    case rm_Bask_Minor:
        o = instance_nearest(x, y, obj_cultist); break;
    default:
        o = obj_player;
        break;
}
if o != noone {
    mp_potential_step_object(o.x, o.y, 0.001, obj_alien_friendly);
    
    image_xscale *= buffer;
    image_yscale *= buffer;
    target = instance_place(x, y, o);
    if instance_exists(target) {
        x -= dcos(point_direction(x, y, target.x, target.y));
        y += dsin(point_direction(x, y, target.x, target.y));
    }
    image_xscale /= buffer;
    image_yscale /= buffer;
} else {
    image_angle += random_range(-1, 1);
}

