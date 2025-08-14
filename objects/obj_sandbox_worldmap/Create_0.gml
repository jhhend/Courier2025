x = room_width/2;
y = room_height/2;

amount = global.endamount;
dist = 192;
name = "SANDBOX";
draw = false;

for (var i = 0; i <= amount; i++) {
    scale[i] = random_range(1, 2.2);
    color[i] = choose_colors(5);
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

rectalpha = 1;
textalpha = 1;
cansubtract = false;

text = @"Congradulations!
You have used the STAR GEM to create your very own galaxy.
Customize it to your liking by entering the SOCKET.";

if global.prevroom == rm_sandbox_transition {
    alarm[0] = room_speed*7.5;
}

