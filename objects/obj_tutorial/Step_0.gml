image_angle -= .5;

if keyboard_check_pressed(vk_space) {
    if (page < maxpage) {
        page++;
        if instance_exists(obj_player_tutorial) {
            instance_destroy(obj_player_tutorial);
        }
        if instance_exists(obj_laser_tutorial) {
            destroy_object(obj_laser_tutorial);
        }
    } else {
        room_goto(rm_intro);
    }
    play_sound(snd_select, 1, false);
}

