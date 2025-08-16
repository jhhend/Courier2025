//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, string_hash_to_newline("HOME"));

//draw selection options
draw_set_font(fnt_standard);
for (var i = 0; i < array_length(text); i++) {
    if placement == i {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(">" + text[i] + "<"));
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(text[i]));
    }
}

//draw savings and currency
draw_text(room_width/2, room_height-18, string_hash_to_newline("Currency: $" + string(global.state.money)));
draw_text(room_width/2, room_height-36, string_hash_to_newline("Savings: $" + string(global.savings)));

//draw save
if drawsave {
    draw_set_colour(c_white);
    draw_set_font(fnt_hud);
    draw_set_colour(c_lime);
    draw_text(room_width/2, room_height/3, string_hash_to_newline("SAVE SUCCESSFUL!"));
}

