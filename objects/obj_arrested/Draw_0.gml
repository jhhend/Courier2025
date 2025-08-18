//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

draw_set_font(fnt_title);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(room_width/2, room_height/5, "YOU HAVE BEEN\nARRESTED");

draw_set_font(fnt_standard);
draw_text(room_width/2, (room_height/2)+32, $"You have been fined ${global.fine}.\nYour cargo has been seized.\n\nPress any key to continue.");

//hint
draw_set_font(fnt_hud);
display_hint(room_width/2, room_height-32, hinttext);

