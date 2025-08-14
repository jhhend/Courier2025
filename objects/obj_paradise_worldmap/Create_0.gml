x = room_width/2;
y = room_height/2;

amount = 3000;
dist = 192;
name = "PARADISE";
draw = false;

for (var i = 0; i <= amount; i++) {
    scale[i] = random_range(1, 2.2);
    color[i] = make_colour_hsv(random_range(15, 45), 255, 255);
    alpha[i] = irandom_range(.5, 1);
    angle[i] = random(360);
    dir[i] = random(360);
    distance[i] = random(dist);
    const[i] = random_range(.1, .3); 
    condir[i] = random_range(.1, .5);   
}

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(-1);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}


