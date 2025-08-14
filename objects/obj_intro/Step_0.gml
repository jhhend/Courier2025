if y != room_height/2 {
    y -= .5;
} else {
    if cont < 1 {
        cont++;
    }
}

if keyboard_check_pressed(vk_anykey) {
    cont++;
}

if (cont >= 2) {
    if audio_is_playing(mus_textcrawl) {
        audio_stop_sound(mus_textcrawl);
    }
    play_music(mus_gameworld, 1, true);
    room_goto(rm_worldmap);
}

