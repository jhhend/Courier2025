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
            global.faction = THIEF;
            room_goto(rm_Bask_Major);
            break;
        case 1: //decline
            destroy_self();
            instance_create(x, y, obj_thief_interaction);
            break;
    }
    play_sound(snd_select, 1, false);
}


