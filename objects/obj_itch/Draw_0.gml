for (var i = 0; i <= amount; i++) {
    draw_sprite_ext(spr_star, 0, xcoord[i], ycoord[i], scale[i], scale[i], angle[i], color[i], alpha[i]);
}

var s, a;
    s = 7;
    a = .45
draw_sprite_ext(spr_player, 0, x, y, s, s, 45, c_orange, a);
draw_sprite_ext(spr_player, 1, x, y, s, s, 45, c_white, a);

draw_sprite_ext(spr_dropoff, 0, room_width, room_height, 3, 3, 60, c_white, a);

draw_sprite_ext(spr_gem, 0, 32, 32, 4, 4, 30, c_white, a);

draw_sprite_ext(spr_cargo_thief, 0, 32, room_height-32, 5.5, 5.5, 30, c_white, a);

draw_sprite_ext(spr_alien, 0, room_width-32, 32, 6.5, 6.5, 210, c_white, a);

draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, string_hash_to_newline("COURIER"));

