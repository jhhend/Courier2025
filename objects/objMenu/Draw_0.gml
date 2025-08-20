
// Stars
for (var i = 0; i < starAmount; i++) {
	var star = stars[i];
    draw_sprite_ext(spr_star, 0, star.x, star.y, star.scale, star.scale, star.angle, star.color, star.alpha);
}

var current = getCurrentMenu();
if (current == undefined) {
	draw_text(room_width/2, room_height/2, "oh no");
	exit;
}

// Title
draw_set_font(fnt_title);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, current.title);

// Subtitles
current.drawSubtitles(room_width/2, room_height/5 + 32);

// Display the options
current.drawOptions(room_width/2, room_height/2);

// Display money
if (current.showMoney) {
	draw_text(room_width/2, room_height-16, $"Currency: ${global.state.money}");
}

// Draw anything additional
current.drawAdditional();
