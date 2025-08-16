
title = "Title";
text = [ "" ];
placement = 0;

// Params
showMoney = false;

// Stars
stars = [ ];
starAmount = 500;
repeat (starAmount) {
	array_push(stars, {
		x: random_range(0, room_width),
		y: random_range(0, room_height),
		scale: random_range(.5, .9),
		color: choose_colors(0),
		alpha: random_range(.25, .75),
		angle: random(360)
	});
}
