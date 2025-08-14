for (var i = 0; i <= staramount; i++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[i], bkycoord[i], bkscale[i], bkscale[i], bkangle[i], bkcolor[i], bkalpha[i])
}

draw_sprite_ext(spr_pod_animation, image_index, room_width/2, room_height/2, scale, scale, image_angle, c_white, alpha);

draw_set_alpha(rectalpha);
draw_set_colour(c_white);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

