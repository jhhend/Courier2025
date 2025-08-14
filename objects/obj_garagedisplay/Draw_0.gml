//draw image

if obj_garage_interaction.placement != 9 {
    // draw player sprite
    draw_sprite_ext(spr_player, 0, x, y, scale, scale, image_angle, global.color, 1);
    draw_sprite_ext(spr_player, 1, x, y, scale, scale, image_angle, c_white, 1);
}

