if (global.settings.get("showFps") && !instance_exists(obj_player)) {
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_set_colour(c_yellow);
    draw_set_font(fnt_hud);
    draw_text(x, y, string_hash_to_newline(string(fps)));
}

draw_set_colour(c_white);

