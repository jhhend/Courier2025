//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, "SHOP");

//draw price
draw_set_font(fnt_standard);
if text[placement] != "PURCHASED" && placement != 9 {
    draw_text(room_width/2, (room_height/5)+32, "Price: $" + price[placement])
} else {
    draw_text(room_width/2, (room_height/5)+32, "")
}

//draw selection options
for (var i = 0; i < array_length(text); i++) {
    if placement == i{
        draw_text(72, (room_height/5)+63+(i*32), ">" + text[i] + "<");
    } else {
        draw_text(72, (room_height/5)+63+(i*32), text[i]);    
    }
}

//draw placement (debug)
// draw_text(32, 32, string(placement));

//draw flavor-text/information
draw_set_font(fnt_hud);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text[placement] != "PURCHASED" {
    draw_text((room_width/3)-24, (room_height/5)+63, ftext[placement]);
} else {
    draw_text((room_width/3)-24, (room_height/5)+63, "You have already purchased this item.");    
}

//draw money
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if placement != 9 {
    draw_text(room_width/2, room_height-16, "Currency: $" + string(global.state.money));
}

