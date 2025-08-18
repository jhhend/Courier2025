//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, "MOB BOSS");

draw_set_font(fnt_hud);
if placement != array_length(text) - 1 {
    draw_text_quotations(room_width/2, (room_height/5)+32, tagline)
    //if placement != 2 {
    draw_text_parentheses(room_width/2, (room_height/5)+48, subtag);
    //}
}

draw_set_font(fnt_standard);
for (var i = 0; i < array_length(text); i++) {
    if placement == i {
        draw_text(room_width/2, (room_height/2)+(i*32), ">" + text[i] + "<");
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), text[i]);
    }
}

if placement != 9 {
    draw_text(room_width/2, room_height-16, "Currency: $" + string(global.state.money));
}

if (global.faction == FactionType.Mafia) {
    draw_set_font(fnt_hud);
    draw_set_colour(c_thief);
    draw_text(room_width/2, room_height*.75, "ABILITY: [PICKPOCKET]\nAllows you to steal from civillians undetected.\nPASSIVE: [AFFILIATION]\nThieves will not attempt to rob you.");
}

