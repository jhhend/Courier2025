for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

draw_sprite_ext(spr_station, 0, room_width/2, room_height/2, 1, 1, image_angle, c_white, 1);

draw_set_colour(c_white);
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height*2/3, string_hash_to_newline(text));

