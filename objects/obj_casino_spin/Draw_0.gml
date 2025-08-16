//draw stars
for (var j = 0; j <= staramount; j++) {
    draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
}

//room title
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_text(room_width/2, room_height/5, string_hash_to_newline("SPIN"));

var xx, yy, rad, hrad;
    xx = room_width/2;
    yy = room_height/2;
    rad = 128;
    hrad = rad*.75;
draw_set_circle_precision(64);
draw_set_colour(merge_colour(c_alien, c_green, .5));
draw_circle(xx, yy, rad, false);
draw_set_colour(c_white);
draw_circle(xx, yy, rad, true);
draw_line(xx + lengthdir_x(rad, image_angle+90), yy + lengthdir_y(rad, image_angle+90), xx + lengthdir_x(-rad, image_angle+90), yy + lengthdir_y(-rad, image_angle+90));
draw_line(xx + lengthdir_x(rad, image_angle), yy + lengthdir_y(rad, image_angle), xx + lengthdir_x(-rad, image_angle), yy + lengthdir_y(-rad, image_angle));
draw_line(xx + lengthdir_x(rad, image_angle+45), yy + lengthdir_y(rad, image_angle+45), xx + lengthdir_x(-rad, image_angle+45), yy + lengthdir_y(-rad, image_angle+45));
draw_line(xx + lengthdir_x(rad, image_angle-45), yy + lengthdir_y(rad, image_angle-45), xx + lengthdir_x(-rad, image_angle-45), yy + lengthdir_y(-rad, image_angle-45));
draw_line(xx + lengthdir_x(rad, image_angle+22.5), yy + lengthdir_y(rad, image_angle+22.5), xx + lengthdir_x(-rad, image_angle+22.5), yy + lengthdir_y(-rad, image_angle+22.5));
draw_line(xx + lengthdir_x(rad, image_angle-22.5), yy + lengthdir_y(rad, image_angle-22.5), xx + lengthdir_x(-rad, image_angle-22.5), yy + lengthdir_y(-rad, image_angle-22.5));
draw_line(xx + lengthdir_x(rad, image_angle+22.5+45), yy + lengthdir_y(rad, image_angle+22.5+45), xx + lengthdir_x(-rad, image_angle+22.5+45), yy + lengthdir_y(-rad, image_angle+22.5+45));
draw_line(xx + lengthdir_x(rad, image_angle-22.5-45), yy + lengthdir_y(rad, image_angle-22.5-45), xx + lengthdir_x(-rad, image_angle-22.5-45), yy + lengthdir_y(-rad, image_angle-22.5-45));
draw_set_colour(c_black);
draw_set_font(fnt_hud);
var count = 0;
for (var i = 0; i <= 32; i++) {
    count += 11.25;
    if i mod 2 == 0 {
    draw_text_transformed(xx + lengthdir_x(hrad, image_angle+count), yy+lengthdir_y(hrad, image_angle+count), string_hash_to_newline("?"), 1, 1, 0);    
    }
}
draw_set_colour(c_yellow);
draw_circle(xx, yy, rad/48, false);
draw_set_colour(c_olive);
draw_circle(xx, yy, rad/48, true);
draw_set_colour(c_green);
draw_circle(xx, yy, rad, true);
var len = 10;
draw_set_colour(c_red);
draw_triangle(  xx, yy+rad,
                xx+lengthdir_x(len, 240), (yy+rad)+lengthdir_y(len, 240),
                xx+lengthdir_x(len, 300), (yy+rad)+lengthdir_y(len, 240),
                false);

if (drawresult = true) {
    var c, s, w, t;
    switch(spin) {
        case 1:
            c = c_black;
            s = "WIN";
            w = floor(global.casino.pot*(1/global.casino.betType));
            t = "Press any key to collect winnings of#$" + string(w);
            break;
        default:
            c = c_black;
            s = "LOSE";
            w = -1;
            t = "Sorry. Press any key to continue."
            break;
    }
    draw_set_colour(merge_colour(c_alien, c_green, .5));
    draw_rectangle(xx-4, (yy+hrad)-4, xx+4, (yy+hrad)+4, false);
    draw_set_colour(c_white);
    draw_set_font(fnt_standard);
    draw_text(xx, yy+rad+48, string_hash_to_newline(t));
    draw_set_colour(c);
    draw_set_font(fnt_hud);
    draw_text(xx, yy+(hrad), string_hash_to_newline(s))
}

