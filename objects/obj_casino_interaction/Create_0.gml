minbet = 3500;

if global.money < minbet {
    for (var i = 0; i <= 5; i++) {
        text[i] = "$" + string(minbet) + " REQUIRED FOR BUY IN";
    }
    text[5] = "Back";
} else {
    text[0] = "Spin with 1/16 Bet + ($" + string(floor(global.money/16))+")";
    text[1] = "Spin with 1/8 Bet + ($" + string(floor(global.money/8))+")";
    text[2] = "Spin with 1/4 Bet + ($" + string(floor(global.money/4))+")";
    text[3] = "Spin with 1/2 Bet + ($" + string(floor(global.money/2))+")";
    text[4] = "Spin with ALL IN + ($" + string(global.money)+")";
    text[5] = "Back";
}

placement = 0;

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(3);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

