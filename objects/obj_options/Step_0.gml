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
        case 0: //sound
            global.sound = !global.sound;
            play_sound(snd_select, 1, false);
            break;
        case 1: //music
            global.music = !global.music;
            if audio_is_playing(mus_mainmenu) && global.music == false {
                audio_stop_sound(mus_mainmenu);
            } else if !audio_is_playing(mus_mainmenu) && global.music == true {
                play_music(mus_mainmenu, 1, true);
            }
            play_sound(snd_select, 1, false);
            break;
        case 2: //fullscreen
            if window_get_fullscreen() == true {
                window_set_fullscreen(false);
                global.fullscreen = false;
            } else {
                window_set_fullscreen(true);
                global.fullscreen = true;
            }
            play_sound(snd_select, 1, false);
            break;
        case 3: //fps counter
            global.showfps = !global.showfps;;
            play_sound(snd_select, 1, false);
            break;
        case 4: //delete save
            if file_exists("save.sav") {
                play_sound(snd_select, 1, false);
                room_goto(rm_deleteconfirm);
            } else {
                drawtext = true;
                alarm[0] = room_speed;
                play_sound(snd_error, 1, false);
            }
            break;
        case 5: //back
            play_sound(snd_select, 1, false);
            save_options();
            room_goto(rm_menu);
            break;
    }
}

//update text
if global.sound == true {text[0] = "Sound: On"} else {text[0] = "Sound: Off"}
if global.music == true {text[1] = "Music: On"} else {text[1] = "Music: Off"};
if window_get_fullscreen() == true {text[2] = "Fullscreen: On"} else {text[2] = "Fullscreen: Off"};
if global.showfps == true {text[3] = "FPS Counter: On"} else {text[3] = "FPS Counter: Off"};
text[4] = "Delete Save";
text[5] = "Back";


