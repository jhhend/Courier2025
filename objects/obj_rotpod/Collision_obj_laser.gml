if canattack == true {
    switch (hp) {
        case 2:
            var i, e;
                i = id;
                e = instance_create(x, y, obj_explosion);
            with (e) {
                creator = i;
                image_xscale = creator.image_xscale;
                image_yscale = creator.image_yscale;
            }
            destroy_other();
            hp--;
            canattack = false;
            alarm[0] = room_speed;
            break;
        case 1:
            var i, e;
                i = id;
                e = instance_create(x, y, obj_explosion);
            with (e) {
                creator = i;
                image_xscale = creator.image_xscale+.75;
                image_yscale = creator.image_yscale+.75;
            }
            destroy_self();
            dir = 0;
            for (var i = 0; i < 3; i++) {
                var d = dir;
                var e = instance_create(x, y, obj_bar); 
                with e {
                    direction = d;
                    speed = 5;
                }
                dir += 120;
            }
            destroy_other();
            break;
    }
}

