text[0] = "Restore Shields (Currently " + string(global.shields) + "/" + string(global.maxshields) + ")";
text[1] = "Deopsit Available Funds"; 
text[2] = "Save Game";
text[3] = "Back"

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

drawsave = false;

