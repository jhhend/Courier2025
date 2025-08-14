//up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length_1d(text) - 1) {
    placement += 1;
}

//select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0:
            switch (global.questphase) {
                case 3:
                    global.questphase++;
                    room_goto(rm_sandbox_transition);
                    break;
                default:
                    room_goto(rm_sandbox_worldmap);
                    break;
            }
            break;
        case 1: //back
            global.prevroom = rm_socket;
            room_goto(rm_worldmap);
            break;
    }
}


