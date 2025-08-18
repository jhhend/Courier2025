//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, "THE QUEEN");

draw_set_font(fnt_hud);
if placement != array_length(text) - 1 {
    draw_text(room_width/2, (room_height/5)+32, tagline)
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_parentheses(room_width/2, (room_height/5)+48, subtag);
}

draw_set_font(fnt_standard);
for (var i = 0; i < array_length(text); i++) {
    if placement == i {
        draw_text(room_width/2, (room_height/2)+(i*32), $">{text[i]}<");
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), text[i]);
    }
}

if placement != 9 {
    draw_text(room_width/2, room_height-16, $"Currency: ${global.state.money}");
}

if (global.faction == FactionType.Alien) {
    draw_set_font(fnt_hud);
    draw_set_colour(c_alien);
    draw_text(room_width/2, room_height*.75, "ABILITY: [SWARM]\nAllows you to summon a swarm of aliens to attack those\naround you.\nPASSIVE: [HIVEMIND]\nAliens will not attempt to attack you.")
}

