price = (global.murder*125)
text[0] = "Remove Murder Charges ($" + string(price) + ")";
text[1] = "Inquire"; 
text[2] = "Back"

if global.faction != THIEF {
    text[1] = "Inquire";
} else {
    text[1] = "Leave Faction";
}

placement = 0;
if global.murder > 0 {
    tagline = "Time is money. Let's make a deal, shall we?"
} else {
    tagline = "You're squeaky clean, kid."
}

subtag = "(" + string(global.illegaltotal) + "/10 Contraband Delivered";

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(3);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

