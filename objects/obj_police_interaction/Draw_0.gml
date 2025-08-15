//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, string_hash_to_newline("POLICE CHIEF"));

draw_set_font(fnt_hud);
if placement != array_length(text) - 1 {
    draw_text_quotations(room_width/2, (room_height/5)+32, tagline)
    draw_text_parentheses(room_width/2, (room_height/5)+48, subtag);
}

draw_set_font(fnt_standard);
for (var i = 0; i < array_length(text); i++) {
    if placement == i {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(">" + text[i] + "<"));
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(text[i]));
    }
}

draw_text(room_width/2, room_height-16, string_hash_to_newline("Currency: $" + string(global.money)));

if (global.faction == POLICE) {
    draw_set_font(fnt_hud);
    draw_set_colour(c_police);
    draw_text(room_width/2, room_height*.75, string_hash_to_newline(@"ABILITY: [SEARCH]
Allows you to search civillians and arrest them if they are
holding illegal cargo. Allows you to arrest thieves.
PASSIVE: [AUTHORITY]
Thieves will not attempt to rob you."))
}

