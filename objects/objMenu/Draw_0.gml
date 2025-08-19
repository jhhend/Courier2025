
// Stars
for (var i = 0; i <= starAmount; i++) {
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
if (current != array_length(text) - 1) {
	var currentOption = text[current];
	for (var i = 0; i < array_length(currentOption.subtitles); i++) {
		var subtitle = currentOption.subtitles[i];
		var text = is_method(subtitle) ? subtitle() : subtitle;
		draw_text(room_width/2, room_height/5 + 32 + 16*i, text);
	}
	/*
    draw_text_quotations(room_width/2, (room_height/5)+32, tagline)
    draw_text_parentheses(room_width/2, (room_height/5)+48, subtag);
	*/
}

// Display the options
draw_set_font(fnt_standard);
for (var i = 0; i < array_length(text); i++) {
	var line = text[i];
	var str = line.text();
    if (current  == i) {
        draw_text(room_width/2, (room_height/2)+(i*32), $">{str}<");
    } else {
        draw_text(room_width/2, (room_height/2)+(i*32), str);
    }
}

// Display money
if (showMoney) {
	draw_text(room_width/2, room_height-16, $"Currency: ${global.state.money}");
}

if (global.faction == FactionType.Republic) {
    draw_set_font(fnt_hud);
    draw_set_colour(c_police);
    draw_text(room_width/2, room_height*.75, "ABILITY: [SEARCH]\nAllows you to search civillians and arrest them if they are\nholding illegal cargo. Allows you to arrest thieves.\nPASSIVE: [AUTHORITY]\nThieves will not attempt to rob you.")
}

