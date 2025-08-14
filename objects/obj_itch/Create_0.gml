x = room_width/2;
y = room_height/2;

amount = 300;
for (var i = 0; i <= amount; i++) {
    xcoord[i] = random_range(0, room_width);
    ycoord[i] = random_range(0, room_height);
    scale[i] = random_range(1, 2.2);
    color[i] = c_white;
    alpha[i] = random_range(.5, 1);
    angle[i] = random(360);
}

