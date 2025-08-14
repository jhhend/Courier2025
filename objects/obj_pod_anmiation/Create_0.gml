//background stars
staramount = 500;
for (var j = 0; j <= staramount; j++) {
        bkxcoord[j] = random_range(0, room_width);
        bkycoord[j] = random_range(0, room_height);
        bkscale[j] = random_range(.5, .9);
        bkcolor[j] = choose_colors(-1);
        bkalpha[j] = random_range(.25, .75);
        bkangle[j] = random(360);
}

image_speed = 0;
image_index = 0;

phase = 0;
rotspd = 0;
rectalpha = 0;
shake = 0;
scale = 7;
alpha = .9;

global.prevroom = rm_sandbox_transition;

alarm[0] = room_speed;

