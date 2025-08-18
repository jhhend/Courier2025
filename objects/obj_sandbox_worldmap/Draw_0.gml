draw_set_alpha(1);
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

if (global.prevroom = rm_sandbox_transition) {
    var xx, yy;
        xx = room_width/2;
        yy = room_height/2;
    draw_set_alpha(textalpha);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_colour(c_dkgray);
    var strWidth = string_width(text);
    var strHeight = string_height(text);
    draw_rectangle(xx-(.5*strWidth),yy-(.5*strHeight),xx+(.5*strWidth),yy+(.5*strHeight),false);
    draw_set_colour(c_cult);
    draw_text(xx, yy, text);
    draw_set_colour(c_white);
    draw_set_alpha(rectalpha);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_colour(c_white);
}

