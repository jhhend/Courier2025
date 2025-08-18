var midx, midy;
    midx = __view_get( e__VW.XView, 0 ) + 72;
    midy = __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 )/5)+63;
    mid5 = __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 )/5);

if (pause) {
    for (var j = 0; j <= staramount; j++) {
        draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
    }
    draw_set_font(fnt_title);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2), mid5, "PAUSED");
    
    draw_set_font(fnt_standard);
    for (var i = 0; i < array_length(text); i++) {
        if placement == i {
            draw_text(midx, midy+(i*32), ">" + text[i] + "<");
        } else {
            draw_text(midx, midy+(i*32), text[i]);    
        }
    }
    draw_set_font(fnt_hud);
    draw_text(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2), midy, "OBJECTIVES:");
    var o;
    for (var i = 0; i < global.questphase+1/*array_length(quest)*/; i++) {
        if i == global.questphase {
            draw_set_colour(c_white);
        } else {
            draw_set_colour(c_dkgray);
        }
        draw_text(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2), midy+32+(i*32), quest[i]);
    }
}

/* */
/*  */
