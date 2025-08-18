for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
for (var i = 0; i < 2; i++) {
    var c;
    switch (i) {
        case 0:
            c = c_orange; break;
        case 1:
            c = c_white; break;
    }
    draw_sprite_ext(spr_player, i, room_width/2, room_height/5, 7, 7, image_angle, c, .45)
}
draw_text(room_width/2, room_height/5, "COURIER");

draw_set_font(fnt_standard);
for (var i = 0; i < array_length(text); i++) {
    if placement == i {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(">" + text[i] + "<"));
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(text[i]));
    }
}

