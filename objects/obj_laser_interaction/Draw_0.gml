//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, "LASER CRYSTALS");

//draw selection options
draw_set_font(fnt_standard);
for (var i = 0; i < array_length(text); i++) {
    if placement == i{
        draw_text(72, (room_height/5)+63+(i*32), ">" + text[i] + "<");
    } else {
        draw_text(72, (room_height/5)+63+(i*32), text[i]);    
    }
}

