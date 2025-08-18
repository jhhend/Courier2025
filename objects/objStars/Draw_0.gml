
for (var i = 0; i < starCount; i++) {
	var star = stars[i];
	draw_sprite_ext(spr_star, 0, star.x, star.y, star.scale, star.scale, star.angle, star.color, star.alpha);
}
