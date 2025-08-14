text[0] = "Play";
text[1] = "Options";
text[2] = "Credits";
text[3] = "Quit";

placement = 0;

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(-1);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

if audio_is_playing(mus_gameworld) {
    audio_stop_sound(mus_gameworld);
}

if !audio_is_playing(mus_mainmenu) {
    play_music(mus_mainmenu, 1, true);
}

