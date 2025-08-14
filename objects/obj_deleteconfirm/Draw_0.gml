for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_red);
draw_text(room_width/2, room_height/5, string_hash_to_newline("ARE YOU SURE?"));

draw_set_font(fnt_standard);
for (var i = 0; i < array_length_1d(text); i++) {
    if placement == i {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(">" + text[i] + "<"));
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(text[i]));
    }
}

