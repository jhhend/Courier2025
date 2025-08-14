switch (phase) {
    case 0: //fire orb bullets 
        repeat(6) {
            var e1 = instance_create(x, y, obj_reverse_laser);
            with (e1) {
                direction = random(360);
                image_angle = direction;
                speed = random_range(5, 7);
            }
        }
        alarm[0] = room_speed*alarmspeed;
        break;
    case 1: //fire in burst
        cardinal = choose(UP, DOWN, LEFT, RIGHT);
        var off = 60;
        var c = cardinal;
        repeat(10) {
            var e = instance_create(x, y, obj_turret_laser);
            with (e) {
                direction = random_range(c-off, c+off);
                image_angle = direction;
                speed = 5;
                image_blend = choose(c_cult, c_fuchsia, c_purple, merge_colour(c_red, c_fuchsia, .5));
            }
        }
        alarm[0] = room_speed*alarmspeed;
        break;
    case 2: //fire five ways
        angle += 3;
        var a = angle;
        for (var i = 0; i <= 5; i++) {
            var a = angle;
            var l = instance_create(x, y, obj_turret_laser)
            with (l) {
                image_angle = a;
                direction = image_angle;
                speed = 5;
                image_blend = choose(c_cult, c_fuchsia, c_purple, merge_colour(c_red, c_fuchsia, .5));
            }
            angle += 72;
        }
        alarm[0] = room_speed*alarmspeed;
        break;
    case 3: //fire at player
        var e = instance_create(x, y, obj_turret_laser);
        with (e) {
            direction = point_direction(x, y, obj_player.x, obj_player.y);
            image_angle = direction;
            speed = 5;
            image_blend = choose(c_cult, c_fuchsia, c_purple, merge_colour(c_red, c_fuchsia, .5));
        }
        alarm[0] = room_speed*alarmspeed;
    }

