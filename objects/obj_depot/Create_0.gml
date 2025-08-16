price = PRICE;
text[0] = "Travel to Paradise";
if !global.state.ticket {
    text[1] = "Purchase Ticket ($" + string(price) + ")";
} else {
    text[1] = "PURCHASED";
}
text[2] = "Back";

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

