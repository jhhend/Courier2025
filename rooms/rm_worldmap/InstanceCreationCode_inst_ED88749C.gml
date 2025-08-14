x = room_width*(7/8);
y = room_height*(7/8);

amount = 200;
dist = 85/4;
name = "KORDA";

for (var i = 0; i < amount; i++) {
    scale[i] = random_range(1, 2.2);
    color[i] = choose_colors(2);
    alpha[i] = irandom_range(.5, 1);
    angle[i] = random(360);
    dir[i] = random(360);
    distance[i] = random(dist);
    const[i] = random_range(.1, .3);
    condir[i] = random_range(.1, .3);
}