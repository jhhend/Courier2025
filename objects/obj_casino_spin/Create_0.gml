staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(3);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

spin = irandom_range(1, 16);
switch (spin) {
    case 1:
        global.state.money += floor(global.pot*1/global.bettype);
        //global.pot = 3500;
        sound = snd_money;
        break;
    default:
        sound = snd_bad;
        break;
        
}

drawresult = false;
angleoffset = 19.489;
playsound = true;

