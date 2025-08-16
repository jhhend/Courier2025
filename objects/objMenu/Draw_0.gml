
// Stars
for (var i = 0; i <= staramount; i++) {
	var star = stars[i];
    draw_sprite_ext(spr_star, 0, star.x, star.y, star.scale, star.scale, star.angle, star.color, star.alpha);
}

// Title
draw_set_font(fnt_title);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, title);

// Tagline and subtag
draw_set_font(fnt_hud);
if (placement != array_length(text) - 1) {
    draw_text_quotations(room_width/2, (room_height/5)+32, tagline)
    draw_text_parentheses(room_width/2, (room_height/5)+48, subtag);
}

// Display the options
draw_set_font(fnt_standard);
for (var i = 0; i < array_length(text); i++) {
	var line = text[i];
	var str = line.text();
    if (placement == i) {
        draw_text(room_width/2, (room_height/2)+(i*32), $">{str}<");
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), str);
    }
}

// Display money
if (showMoney) {
	draw_text(room_width/2, room_height-16, $"Currency: ${global.state.money}");
}

if (global.state.faction == POLICE) {
    draw_set_font(fnt_hud);
    draw_set_colour(c_police);
    draw_text(room_width/2, room_height*.75, string_hash_to_newline(@"ABILITY: [SEARCH]
Allows you to search civillians and arrest them if they are
holding illegal cargo. Allows you to arrest thieves.
PASSIVE: [AUTHORITY]
Thieves will not attempt to rob you."))
}

