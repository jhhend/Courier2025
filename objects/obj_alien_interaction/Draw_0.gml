//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, string_hash_to_newline("THE QUEEN"));

draw_set_font(fnt_hud);
if placement != array_length_1d(text) - 1 {
    draw_text(room_width/2, (room_height/5)+32, string_hash_to_newline(tagline))
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_parentheses(room_width/2, (room_height/5)+48, subtag);
}

draw_set_font(fnt_standard);
for (var i = 0; i < array_length_1d(text); i++) {
    if placement == i {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(">" + text[i] + "<"));
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), string_hash_to_newline(text[i]));
    }
}

if placement != 9 {
    draw_text(room_width/2, room_height-16, string_hash_to_newline("Currency: $" + string(global.money)));
}

if (global.faction == ALIEN) {
    draw_set_font(fnt_hud);
    draw_set_colour(c_alien);
    draw_text(room_width/2, room_height*.75, string_hash_to_newline(@"ABILITY: [SWARM]
Allows you to summon a swarm of aliens to attack those
around you.
PASSIVE: [HIVEMIND]
Aliens will not attempt to attack you."))
}

