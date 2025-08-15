//up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

//select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0:
            room_goto(rm_paradise_transport);
            break;
        case 1: //case
            global.prevroom = rm_paradise_depot;
            room_goto(rm_paradise_worldmap);
            break;
    }
    play_sound(snd_select, 1, false);
}


