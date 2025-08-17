
draw_sprite_ext(cargo.sprite, cargo.spriteIndex, x, y, 1, 1, image_angle, c_white, 1);

if (draw) {
    draw_set_colour(cargo.color);
    draw_circle(x, y, 64, true);
    draw_set_font(fnt_hud)
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x, y-48, cargo.name);
    draw_text(x, y-24, "Destination: " + roomGetName(cargo.destination));
}
