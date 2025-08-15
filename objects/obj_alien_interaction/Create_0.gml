price = 250;
if global.calm {
    text[0] = "Calm Hive ($0)";
} else {
    text[0] = "Calm Hive ($" + string(price) + ")";
}

if global.faction != ALIEN {
    text[1] = "Inquire"; 
} else {
    text[1] = "Leave Faction";
}
text[2] = "Back"

placement = 0;
if global.calm == false {
    tagline = "The Queen appears to be appeased."
} else {
    tagline = "The Queen seems restless.";
}

if global.murder >= 10 {
    tagline = "The Queen approaches as if she has something to offer.";
} else {
    tagline = "The Queen seems confused at your presence.";
}

subtag = string(global.kills) + "/10 humans killed.";

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(1);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

