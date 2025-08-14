text[0] = "No, don't delete my save";
text[1] = "Yes, delete my save";
text[2] = "Back";

placement = 0;

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = c_red;
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

