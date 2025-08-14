//draw image
switch (obj_shop.placement) {
    case 0: //shields 1
        draw_set_color(c_aqua);
        draw_set_alpha(.5);
        draw_circle(x, y, 48, false);
        draw_set_alpha(1);
        draw_set_color(c_white);
        break;
    case 1: //shields 2
        draw_set_color(c_aqua);
        draw_set_alpha(.5);
        draw_circle(x, y, 64, false);
        draw_circle(x, y, 48, false);
        draw_set_alpha(1);
        draw_set_color(c_white);
        break;
    case 2: //shields 3
        draw_set_color(c_aqua);
        draw_set_alpha(.5);
        draw_circle(x, y, 80, false);
        draw_circle(x, y, 64, false);
        draw_circle(x, y, 48, false);
        draw_set_alpha(1);
        draw_set_color(c_white);
        break;
    case 3: //weapons 1
        draw_set_color(c_red);
        draw_set_alpha(.5);
        draw_triangle(x, y, x+lengthdir_x(300, 14), y+lengthdir_y(300, 14), x+lengthdir_x(300, -14), y+lengthdir_y(300, -14), false);
        draw_set_color(c_maroon);
        draw_set_alpha(1);
        draw_line(x, y, x + lengthdir_x(300, 14), y + lengthdir_y(300, 14));
        draw_line(x, y, x + lengthdir_x(300, -14), y + lengthdir_y(300, -14));
        draw_set_color(c_white);
        break;
        break;
    case 4: //weapons 2
        draw_set_color(c_red)
        draw_set_alpha(.5);
        draw_triangle(x, y, x+lengthdir_x(300, 10), y+lengthdir_y(300, 10), x+lengthdir_x(300, -10), y+lengthdir_y(300, -10), false);
        draw_set_color(c_maroon);
        draw_set_alpha(1);
        draw_line(x, y, x + lengthdir_x(300, 10), y + lengthdir_y(300, 10));
        draw_line(x, y, x + lengthdir_x(300, -10), y + lengthdir_y(300, -10));
        draw_set_color(c_white);
        break;
    case 5: //weapons 3
        draw_set_color(c_red)
        draw_set_alpha(.5);
        draw_triangle(x, y, x+lengthdir_x(300, 6), y+lengthdir_y(300, 6), x+lengthdir_x(300, -6), y+lengthdir_y(300, -6), false);
        draw_set_color(c_maroon);
        draw_set_alpha(1);
        draw_line(x, y, x + lengthdir_x(300, 6), y + lengthdir_y(300, 6));
        draw_line(x, y, x + lengthdir_x(300, -6), y + lengthdir_y(300, -6));
        draw_set_color(c_white);
        break;
    case 6:
        draw_sprite_ext(spr_arrow, 0, x, y, scale, scale, image_angle, c_teal, 1);
        break;
    case 7:
        draw_sprite_ext(spr_arrow, 0, x, y, scale, scale, image_angle, col, 1);
        break;
    case 8:
        draw_sprite_ext(spr_arrow, 0, x, y, scale, scale, image_angle, c_olive, 1);
    default:
        //
        break;
}

if obj_shop.placement != 9 {
    // draw player sprite
    draw_sprite_ext(spr_player, 0, x, y, scale, scale, 0, global.color, 1);
    draw_sprite_ext(spr_player, 1, x, y, scale, scale, 0, c_white, 1);
}

