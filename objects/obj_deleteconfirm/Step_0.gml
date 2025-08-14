for (var i = 0; i <= staramount; i++) {
    if bkxcoord[i] >= room_width {
        bkxcoord[i] = 0;
    } else if bkxcoord[i] < room_width {
        bkxcoord[i] = bkxcoord[i] + .5;
    }
}

// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length_1d(text) - 1) {
    placement += 1;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //return
            room_goto(rm_options);
            break;
        case 1: //delete save
            if file_exists("save.sav") {
                file_delete("save.sav")
            }
            room_goto(rm_options);
            break;
        case 2: //back
            room_goto(rm_options);
            break;
    }
    play_sound(snd_select, 1, false);
}

