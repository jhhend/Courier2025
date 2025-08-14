for (var i = 0; i <= amount; i++) {
    draw_sprite_ext(spr_star, 0, xcoord[i], ycoord[i], scale[i], scale[i], angle[i], color[i], alpha[i]);
}

draw_set_alpha(1);
draw_set_color(c_white);

