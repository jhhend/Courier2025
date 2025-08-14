for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

draw_set_font(fnt_title);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(room_width/2, room_height/5, string_hash_to_newline("YOU HAVE BEEN#ROBBED"));

draw_set_font(fnt_standard);
draw_text(room_width/2, (room_height/2)+32, string_hash_to_newline("The thief stole $" + string(global.fine) + @". 
Your cargo has been stolen.

Press any key to continue."));

/*
//hint
draw_set_font(fnt_hud);
draw_text(room_width/2, room_height-32, "HINT: Legal cargo cannot be delivered when illegal cargo is
in your possession.")

/* */
/*  */
