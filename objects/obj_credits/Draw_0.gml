for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

var s = 5;
offset = 0;
for (var i = 0; i < array_length(image); i++) {
    switch i {
        case 0:
            index = 0;
            blend = c_orange;
            break;
        case 1:
            index = 1;
            blend = c_white;
            break;
        default:
            index = 0;
            blend = c_white;
            break;      
    }

    draw_sprite_ext(image[i], index, x, y+string_height(string_hash_to_newline(title))+offset, s, s, 45, blend, .45);
    if i != 0 {
        offset += 104;
    }
}

draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x, y, string_hash_to_newline(string(title)));
draw_set_font(fnt_standard);
draw_text(x, y+64, string_hash_to_newline(string(text)));

