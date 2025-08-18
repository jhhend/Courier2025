
stars = [ ];
starCount = 500;

for (var i = 0; i < starCount; i++) {
	var star = {
		x: random_range(0, room_width),
		y: random_range(0, room_height),
		scale: random_range(.5, .9),
		color: c_white,
		alpha: random_range(.25, .75),
		angle:  random(360)
	};
	array_push(stars, star);
}
