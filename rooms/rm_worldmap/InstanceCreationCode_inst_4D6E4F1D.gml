x = room_width*(4/5);
y = room_height*(2/8);

amount = 500;
dist = 85/1.5;
name = "BASK MAJOR";

for (var i = 0; i < amount; i++) {
    scale[i] = random_range(1, 2.2);
    color[i] = choose_colors(3);
    alpha[i] = irandom_range(.5, 1);
    angle[i] = random(360);
    dir[i] = random(360);
    distance[i] = random(dist);
    const[i] = random_range(.1, .3);
    condir[i] = random_range(.1, .3);
}