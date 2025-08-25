
// Stars
for (var i = 0; i < starAmount; i++) {
	var star = stars[i];
    draw_sprite_ext(spr_star, 0, star.x, star.y, star.scale, star.scale, star.angle, star.color, star.alpha);
}

var width = display_get_gui_width();
var height = display_get_gui_height();

var current = getCurrentMenu();
if (current == undefined) {
	draw_text(width/2, height/2, "oh no");
	exit;
}

// Title
draw_set_font(fnt_title);
draw_set_colour(current.titleColor);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(width/2, height/5, current.title);

// Subtitles
current.drawSubtitles(width/2, height/5 + 32);

// Display the options
current.drawOptions(width/2, height/2);

// Display money
if (current.showMoney) {
	draw_text(width/2, height-16, $"Currency: ${global.state.money}");
}

// Draw anything additional
current.drawAdditional();
