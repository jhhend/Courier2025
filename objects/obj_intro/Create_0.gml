text = @"The year is 25XX.

Ancient stories tell of a powerful gem, known as the STAR GEM.

Legends state that the one who holds the gem has the power to
create their own galaxy.

Could these legends be true? Recently, rumors have been saying
that the gem is residing in the system known as PARADISE,
guarded by a sentient prison known as the GEMKEEPER.

The price to travel to PARADISE is a hefty one... But could
the cost be worth it?";
textheight = string_height(string_hash_to_newline(text));

x = room_width/2;
y = room_height+(textheight/2);

cont = 0;
draw = false;

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(-1);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

if audio_is_playing(mus_mainmenu) {
    audio_stop_sound(mus_mainmenu);
}

play_music(mus_textcrawl, 1, true);

alarm[0] = room_speed*.5;

