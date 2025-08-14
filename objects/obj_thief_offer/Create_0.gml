text[0] = "Accept";
text[1] = "Decline"; 

placement = 0;
tagline = "Fortune awaits, kid. You in?";

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(3);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

