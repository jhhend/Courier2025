draw_set_alpha(.5);
draw_set_color(c_lime);
draw_circle(x, y, radius, false);
draw_set_alpha(1);
draw_set_color(c_green);
draw_circle(x, y, radius, true);
draw_self();

