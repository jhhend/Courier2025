x = (room_width/2)+16;
y = room_height*(1.75/8)-24;

amount = 300;
dist = 85/3;
name = "BASK MINOR";

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