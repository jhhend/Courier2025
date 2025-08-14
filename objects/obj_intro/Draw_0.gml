for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_hud);
draw_set_colour(c_white);
draw_text(x, y, string_hash_to_newline(text));
draw_set_colour(c_cult);
draw_text(x, y, string_hash_to_newline(@"#
                                                     STAR GEM 
##########"))
draw_set_colour(c_orange);
draw_text(x, y, string_hash_to_newline(@"#######
                                                PARADISE 
#
                       PARADISE                            
#"))
draw_set_colour(merge_colour(c_yellow, c_olive, .5));
draw_text(x, y, string_hash_to_newline(@"########
                                          GEMKEEPER 
###"))
if (cont == 1 && draw == true) {
    draw_set_colour(c_dkgray);
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_set_alpha(.5)
    draw_text(room_width, room_height, string_hash_to_newline("PRESS ANY KEY TO CONTINUE"));
}

draw_set_alpha(1);

