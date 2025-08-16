//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, string_hash_to_newline("SHOP"));

//draw price
draw_set_font(fnt_standard);
if text[placement] != "PURCHASED" && placement != 9 {
    draw_text(room_width/2, (room_height/5)+32, string_hash_to_newline("Price: $" + price[placement]))
} else {
    draw_text(room_width/2, (room_height/5)+32, string_hash_to_newline(""))
}

//draw selection options
for (var i = 0; i < array_length(text); i++) {
    if placement == i{
        draw_text(72, (room_height/5)+63+(i*32), string_hash_to_newline(">" + text[i] + "<"));
    } else {
        draw_text(72, (room_height/5)+63+(i*32), string_hash_to_newline(text[i]));    
    }
}

//draw placement (debug)
draw_text(32, 32, string_hash_to_newline(string(placement)));

//draw flavor-text/information
draw_set_font(fnt_hud);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text[placement] != "PURCHASED" {
    draw_text((room_width/3)-24, (room_height/5)+63, string_hash_to_newline(ftext[placement]));
} else {
    draw_text((room_width/3)-24, (room_height/5)+63, string_hash_to_newline("You have already purchased this item."));    
}

//draw money
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if placement != 9 {
    draw_text(room_width/2, room_height-16, string_hash_to_newline("Currency: $" + string(global.state.money)));
}

