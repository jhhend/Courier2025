draw_self();

if draw {
    var col;
    switch(status) {
        case "Legal": col = c_aqua; break;
        case "Illegal": col = c_red; break;
        case "Police": col = c_police; break;
        case "Thief": col = c_thief; break;
        case "Alien": col = c_alien; break;
        case "Cult": col = c_cult; break;
    }
    draw_set_colour(col);
    draw_circle(x, y, 64, true);
    draw_set_font(fnt_hud)
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x, y-48, string_hash_to_newline(name));
    draw_text(x, y-24, string_hash_to_newline("Destination: " + string(destination)));
}

