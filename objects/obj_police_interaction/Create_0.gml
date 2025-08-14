price = 750;
if global.thiefspawn == false {
    text[0] = "Perform Theif Raid ($0)";    
} else if (global.thiefspawn == true) {
    text[0] = "Perform Thief Raid ($" + string(price) + ")";
}

if global.faction != POLICE {
    text[1] = "Inquire"; 
} else {
    text[1] = "Leave Faction";
}
text[2] = "Back"

placement = 0;

if global.thiefspawn == false {
    tagline = "No need to worry about the thieves for now, citizen.";
} else if global.thiefspawn == true {
    tagline = "Have any information about the thieves' whereabouts?";
}

subtag = string(global.legaltotal) + "/10 Legal Cargo Delivered";

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(0);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

