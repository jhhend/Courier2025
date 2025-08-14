x = room_width/2;
y = room_height/2;

amount = 3000;
dist = 192;
name = "PARADISE";
draw = false;
offset = .1;
text = "TRAVELING";

switch (global.tdir) {
    case TO:
        destination = rm_paradise_worldmap;
        break;
    case FROM:
        destination = rm_worldmap;
        break;
}

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(-1);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

global.prevroom = room;

alarm[0] = room_speed*5;
alarm[1] = room_speed*1.33;

play_sound(snd_transport, 1, false);

