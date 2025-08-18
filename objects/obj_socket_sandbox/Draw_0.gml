draw_set_alpha(1);
draw_sprite_ext(spr_pod_animation, 4, x, y, .45, .45, image_angle, c_yellow, .5);

if draw {
    draw_set_font(fnt_hud);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_set_halign(fa_middle);
    draw_text(x, y-dist-16, name);
}


