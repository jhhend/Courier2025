draw_set_circle_precision(32);
draw_set_colour(merge_colour(c_white, c_yellow, .5));
draw_circle(obj_pod.x, obj_pod.y, dist, true);
draw_line(x, y, obj_pod.x, obj_pod.y);
draw_self();

