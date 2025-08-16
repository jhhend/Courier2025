image_angle -= .5;

if collision_circle(x, y, radius, obj_player, true, true) && !global.calm && global.faction != ALIEN {
    if !hasspawned {
        repeat(7) {
            offset = irandom_range(-4, 4);
            instance_create(x+offset, y+offset, obj_alien);
        }
        hasspawned = true;
        if alarm[0] < 0 {
            alarm[0] = room_speed*2;
        }
    }
}

