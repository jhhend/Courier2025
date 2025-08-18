x = room_width/2;
y = room_height/2;

amount = 300;
dist = 85;
controllerdirection = 0;
name = "MAJORIN";

//generate regular stars
if name != "SHOP" || name != "HOME" {
    for (var i = 0; i < amount; i++) {		
		scale[i] = random_range(1, 2.2);
        color[i] = choose_colors(1);
        alpha[i] = random_range(.5, 1);
        angle[i] = random(360);
        dir[i] = random(360);
        distance[i] = random(dist);
        const[i] = random_range(.1, .3);
        condir[i] = random_range(.1, .3);
    }
}

//generate background stars
staramount = 500;
if name == "MAJORIN" {
    for (var j = 0; j <= staramount; j++) {
        bkxcoord[j] = random_range(0, room_width);
        bkycoord[j] = random_range(0, room_height);
        bkscale[j] = random_range(.5, .9);
        bkcolor[j] = choose_colors(-1);
        bkalpha[j] = random_range(.25, .75);
        bkangle[j] = random(360);
    }
}

if (name == "SHOP" || name == "HOME") {
    depth = -1;
}

