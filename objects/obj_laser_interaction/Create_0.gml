text[0] = "Red";
text[1] = "Orange"; 
text[2] = "Yellow";
text[3] = "Lime";
text[4] = "Green";
text[5] = "Teal";
text[6] = "Blue";
text[7] = "Purple";
text[8] = "Pink";
text[9] = "Back";

placement = 0;

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(0);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

