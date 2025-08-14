randomize();
depth = 1;
if room == rm_Paradise || room == rm_Sandbox {
    amount = 4000;
} else {
    amount = 2000;
}
switch (room) {
    case rm_Majorin: coltype = 0; break;
    case rm_Minoran: coltype = 0; break;
    case rm_Axion: coltype = 1; break;
    case rm_Korda: coltype = 2; break;
    case rm_Bask_Major: coltype = 3; break;
    case rm_Bask_Minor: coltype = 3; break;
    case rm_Paradise: coltype = 4; break;
    case rm_Sandbox: coltype = 5; break;
    default: coltype = -1; break;
}

for (var i = 0; i <= amount; i++) {
    xcoord[i] = random_range(0, room_width);
    ycoord[i] = random_range(0, room_height);
    scale[i] = random_range(1, 2.2);
    color[i] = choose_colors(coltype);//choose(c_aqua, c_white, c_yellow, c_orange);
    alpha[i] = random_range(.5, 1);
    angle[i] = random(360);
}

