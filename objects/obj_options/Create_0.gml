text[0] = "Sound: On";
text[1] = "Music: On";
text[2] = "Fullscreen: On";
text[3] = "FPS Counter: On"
text[4] = "Delete Save";
text[5] = "Back";

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

drawtext = false;

