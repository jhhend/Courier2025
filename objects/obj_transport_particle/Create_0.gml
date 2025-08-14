amount = 25;
for (var i = 0; i < amount; i++) {
    xcoord[i] = irandom_range(x-5, x+5);
    ycoord[i] = irandom_range(y-28, y+28);
    scale[i] = random_range(1, 2.2);
    color[i] = choose_colors(4);
    alpha[i] = irandom_range(.5, 1);
    angle[i] = random(360);
    dir[i] = 0;
}

