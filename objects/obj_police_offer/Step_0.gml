// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //accept
            if global.state.faction = -1{
                global.state.faction = POLICE;
                room_goto(rm_Majorin);
            }
            break;
        case 1: //decline
            destroy_self();
            instance_create(x, y, obj_police_interaction);
            break;
    }
    play_sound(snd_select, 1, false);
}


