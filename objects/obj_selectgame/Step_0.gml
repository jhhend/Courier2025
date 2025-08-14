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
        case 0: //load game
            if file_exists("save.sav") {
                load();
                play_sound(snd_select, 1, false);
                room_goto(rm_worldmap);
            } else {
                drawtext = true;
                alarm[0] = room_speed;
                play_sound(snd_error, 1, false);
            }
            break;
        case 1: //new game
            play_sound(snd_select, 1, false);
            room_goto(rm_tutorialselect);
            break;
        case 2: //back
            play_sound(snd_select, 1, false);
            room_goto(rm_menu);
            break;
    }
}

