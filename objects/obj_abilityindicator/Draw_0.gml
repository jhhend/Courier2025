draw_set_font(fnt_hud);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(color);
draw_set_alpha(alpha)
if creator != noone || creator == obj_civillian {
    draw_text(creator.x, creator.y-14, string_hash_to_newline(text));
} else {
    draw_text(x, y, string_hash_to_newline(text));
}
draw_set_alpha(1);

