for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

draw_line(room_width/2, 0, room_width/2, room_height);
draw_line(0, room_height/2, room_width, room_height/2);
var b;
if (placement == 1) {
    b = merge_color(c_black, c_gray, .18);
} else {
    b = c_white;
}

draw_sprite_ext(sprite[placement], 0, room_width/2, room_height/2, 6, 6, image_angle, b, 1);

