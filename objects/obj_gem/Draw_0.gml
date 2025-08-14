for (var i = 0; i <= amount; i++) {
    draw_set_colour(color[i]);
    draw_set_alpha(alpha[i]);
    draw_line(x, y, x+lengthdir_x(len[i], angle[i]), y+lengthdir_y(len[i], angle[i]))
}
draw_set_alpha(1);

draw_self();

