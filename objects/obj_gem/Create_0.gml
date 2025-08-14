x = room_width/2;
y = room_height/2;
len = 30;
amount = 15;
for (var i = 0; i <= amount; i++) {
    angle[i] = random(360);
    diff[i] = choose(random_range(-1, -.1), random_range(.1, 1));
    color[i] = choose(c_purple, c_fuchsia, c_cult);
    alpha[i] = random_range(.4, .6);
    len[i] = 30;
}

