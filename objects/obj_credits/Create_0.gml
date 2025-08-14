x = room_width/2;
y = room_height;

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(-1);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}
title = "COURIER";
text = @"A game by Walrusboy99

Created with GameMaker: Studio 1.4

Sounds created with Chiptone & sfxr

Music created with Bosca Ceoil

Special thanks to playtesters:

cheesegoblin909

ItsHero

laujino

radleyMCT

Regretti_Spaghetti

Snetsy

ThatFroGuy";

height = string_height(string_hash_to_newline(title))+string_height(string_hash_to_newline(text));

image[0] = spr_player;
image[1] = spr_player;
image[2] = spr_civillian;
image[3] = spr_police;
image[4] = spr_thief;
image[5] = spr_alien;
//image[6] = spr_cultist;

