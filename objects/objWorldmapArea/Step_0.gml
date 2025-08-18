
if (!active) { exit; }

inRange = collision_circle(x, y, size, obj_player, true, true);

// Go there if the player selects it
if (inRange && keyboard_check_pressed(vk_enter)) {
	room_goto(area.roomRef);
}

// Animate the stars
for (var i = 0; i < starCount; i++) {
	var star = stars[i];
	
	star.x = x + lengthdir_x(star.dist, star.dir + star.conDir);
	star.y = y + lengthdir_y(star.dist, star.dir + star.conDir);
	star.conDir += star.const;
}
