// if main, draw the background stars
if name == "MAJORIN" {
    for (var j = 0; j <= staramount; j++) {
        draw_sprite_ext(spr_star, 0, bkxcoord[j], bkycoord[j], bkscale[j], bkscale[j], bkangle[j], bkcolor[j], bkalpha[j]);
    }
}

draw_set_alpha(1);
draw_set_color(c_white);
// draw sprite or star collection
switch name {
    case "SHOP":
        draw_sprite_ext(spr_dropoff, 0, x, y, .35, .35, image_angle, c_white, 1);
        break;
    case "HOME":
        draw_sprite_ext(spr_home, 0, x, y, .35, .35, image_angle+45, global.color, 1);
        draw_sprite_ext(spr_home, 1, x, y, .35, .35, image_angle+45, c_white, 1);
        break;
    case "DEPOT":
        draw_sprite_ext(spr_station, 0, x, y, .35, .35, image_angle+15, c_white, 1);
        break;
    case "SOCKET":
        if global.questphase > 3 { 
            draw_sprite_ext(spr_pod_animation, 4, x, y, .45, .45, image_angle +5, c_yellow, 1);        
        } else {
            draw_sprite_ext(spr_pod, 0, x, y, .45, .45, image_angle +5, c_yellow, .5);
        }
        break;
    default:
        for (var i = 0; i < amount; i++) {
            draw_sprite_ext(spr_star, 0, xcoord[i], ycoord[i], scale[i], scale[i], angle[i], color[i], alpha[i]);
        }
        break;
}

draw_set_alpha(1);
draw_set_color(c_white);

// draw the name if the player is within range
//draw_circle(x, y, dist, true);
if draw {
    draw_set_font(fnt_hud);
    draw_set_halign(fa_center);
    draw_set_halign(fa_middle);
    draw_text(x, y-dist-16, string_hash_to_newline(name));
}

