//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, "DEAR LEADER");

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

draw_text(room_width/2, room_height-16, string_hash_to_newline("Currency: $" + string(global.state.money)));

if (global.faction == FactionType.Cult) {
    draw_set_color(c_cult);
    draw_text(room_width/2, mean(room_width/2, (room_height/5)+32), string_hash_to_newline("CULT POWER: " + string(global.cultPower)));
}


if (global.faction == FactionType.Cult) {
    draw_set_font(fnt_hud);
    draw_set_colour(c_cult);
    draw_text(room_width/2, room_height*.75, "ABILITY: [CONVERT]\nAllows you to convert civillians to the cult's cause, raising\nthe cult's power.\nPASSIVE: [BOND]\nCultists will not attempt to attack you.");
}

