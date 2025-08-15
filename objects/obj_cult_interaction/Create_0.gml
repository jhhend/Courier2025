price = 750;
if global.blessing {
    text[0] = "Recieve Blessing ($0)";    
} else if (global.blessing == false) {
    text[0] = "Recieve Blessing ($" + string(price) + ")";
}

if global.faction != CULT {
    text[1] = "Inquire"; 
} else {
    text[1] = "Leave Faction"
}
text[2] = "Back"

placement = 0;

subtag = "Opposing faction has not been betrayed."

if global.blessing {
    tagline = "You have been blessed, my child.";
} else if global.blessing == false {
    tagline = "Have you come to recieve my blessing, child?";
}

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(2);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

