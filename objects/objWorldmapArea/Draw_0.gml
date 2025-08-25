
if (!active) { exit; }

// Draw the stars
for (var i = 0; i < starCount; i++) {
	var star = stars[i];
	draw_sprite_ext(spr_star, 0, star.x, star.y, star.scale, star.scale, star.angle, star.color, 1);
}

if (inRange) {
    draw_set_font(fnt_hud);
    draw_set_halign(fa_center);
    draw_set_halign(fa_middle);
	draw_set_color(c_white);
    draw_text(floor(x), floor(y - size - 16), string_upper(name));
}
