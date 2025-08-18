for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

for (var i = 0; i <= amount; i++) {
    draw_sprite_ext(spr_star, 0, xcoord[i], ycoord[i], scale[i], scale[i], angle[i], color[i], alpha[i]);
}

if draw {
    draw_set_font(fnt_hud);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_set_halign(fa_middle);
    draw_text(x, y-dist-16, name);
}

