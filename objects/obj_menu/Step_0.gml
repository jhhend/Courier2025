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
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //play
            room_goto(rm_gameselect);
            break;
        case 1: //options
            room_goto(rm_options);
            break;
        case 2: //credits
            room_goto(rm_credits);
            break;
        case 3: //quit
            save_options();
            game_end();
            break;
    }
    play_sound(snd_select, 1, false);
}

image_angle -= .25;

