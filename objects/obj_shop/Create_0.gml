text[0] = "Shields 1"; price[0] = "500";
text[1] = "Shields 2"; price[1] = "1000"; 
text[2] = "Shields 3"; price[2] = "2000";
text[3] = "Weapons 1"; price[3] = "500";
text[4] = "Weapons 2"; price[4] = "1000";
text[5] = "Weapons 3"; price[5] = "2000";
text[6] = "Systems 1"; price[6] = "500";
text[7] = "Systems 2"; price[7] = "1000";
text[8] = "Systems 3"; price[8] = "2000";
text[9] = "Back"; price[9] = "";

load_shop_flavortext();

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

