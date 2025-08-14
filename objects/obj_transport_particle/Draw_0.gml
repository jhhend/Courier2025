for (var i = 0; i < amount; i++) {
    scale[i] = random_range(1, 2.2);
    color[i] = choose_colors(4);
    alpha[i] = irandom_range(.5, 1);
    angle[i] = random(360);
    dir[i] = 0;
}

for (var i = 0; i < amount; i++) {
    draw_sprite_ext(spr_star, 0, xcoord[i], ycoord[i], scale[i], scale[i], angle[i], color[i], alpha[i])
}

