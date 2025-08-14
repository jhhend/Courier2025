//draw back grid
draw_set_alpha(.5);
for (var i = 32; i < room_width; i += 32) {
    draw_set_colour(c_green);   
    draw_line(0, i, room_width, i);
    draw_line(i, 0, i, room_height);
}

//draw title
draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/5, string_hash_to_newline("TUTORIAL"));

//draw tutorial text
draw_set_valign(fa_top);
draw_set_font(fnt_hud);
switch (page) {
    case 0:
if !instance_exists(obj_player_tutorial) {
    instance_create(room_width/2, room_height/2, obj_player_tutorial);
}
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"Welcome to COURIER! You are about to embark on your journey of
being an intergalacic delivery boy. While the task may sound
simple, you will encounter many challenges during your
journey. This is your vessel. To navigate, press W to thrust
forward, A and D to turn, and UP to shoot. You can also perform
a dash maneuver: press Q for a left dash and E for a right dash.
Try it out! "));
    break;
    case 1:
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"Your ship begins with a frail build, bad accuracy, and acts as
a poor navigational tool. However, through upgrades, your ship
can withstand more damage, fire more accurately, and have
markers that point out places of interest."));
draw_set_font(fnt_standard);
draw_set_colour(alcolor);
draw_text(room_width/2, room_height*(2/3)-96, string_hash_to_newline(string(alstring)))
draw_set_colour(c_white);
draw_set_font(fnt_hud);
draw_sprite_ext(spr_player, 0, room_width/2, room_height*(2/3), 2, 2, image_angle, global.color, 1);
draw_sprite_ext(spr_player, 1, room_width/2, room_height*(2/3), 2, 2, image_angle, c_white, 1);
draw_sprite_ext(spr_arrow, 0 , room_width/2, room_height*(2/3), 2, 2, image_angle+120, c_teal, 1); 
draw_sprite_ext(spr_arrow, 0 , room_width/2, room_height*(2/3), 2, 2, image_angle, arcolor, 1);
draw_sprite_ext(spr_arrow, 0 , room_width/2, room_height*(2/3), 2, 2, image_angle+240, c_olive, 1);  
    break;
    case 2:
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"Scattered throughout the galaxies you will visit are pieces of
cargo. Each piece of cargo has three main characteristics:
It's NAME, DESTINATION, and STATUS. The name contains a serial
number, which will determine how much the piece of cargo is
worth. The destination is where the cargo will be delivered to.
There are two basic statuses: LEGAL and CONTRABAND. LEGAL cargo
is to be delivered to the dropzone located in the middle of
each system. CONTRABAND is to be delivered to a roaming
criminal that resides somewhere within the destination. To pick
up cargo, press ENTER. If you pick up cargo that you wish to
dispose of, you can press J to jettison your cargo hold."));
draw_sprite_ext(spr_cargo, 0, room_width/3, room_height*(2/3), 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_cargo, 1, room_width*(2/3), room_height*(2/3), 1, 1, 0, c_white, 1);
draw_set_colour(c_aqua);
draw_text(room_width/3, room_height*(2/3)+16, string_hash_to_newline("Name: A56X#Destination: Axion#Status: Legal"));
draw_set_colour(c_red);
draw_text(room_width*(2/3), room_height*(2/3)+16, string_hash_to_newline("Name: C34Z#Destination: Majorin#Status: Contraband"));
    break;
    case 3:
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"Despite the vastness of space, laws still do apply. If
CONTRABAND is delivered to a legal dropzone or if civillians
are killed, police will be sent to arrest you. When arrested,
you will be fined an amount proportional to your crimes (murder
will yeild a larger fine than trying to deliver CONTRABAND)
and your cargo will be seized. While the Republic is fairly
loose with thier regulations, three things are definitely not
allowed: Delivering CONTRABAND, killing CIVILLIANS, and 
killing POLICE. If you do not wish to gain a wanted level, do
not commit these crimes!"));
draw_sprite_ext(spr_police, 0, room_width/2, room_height*(2/3), 3, 3, image_angle, c_white, 1);
    break;
    case 4:
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"While POLICE will only attack if you have committed a crime,
THIEVES and CULTISTS will attack if you come within their
detection range. ALIENS will hunt you down as long as you are
within the boundaries of their system."));
draw_sprite_ext(spr_thief, 0, room_width/4, room_height*(2/3), 3, 3, image_angle, c_white, 1);
draw_sprite_ext(spr_cultist, 0, room_width/2, room_height*(2/3), 3, 3, image_angle, c_white, 1);
draw_sprite_ext(spr_alien, 0, room_width*.75, room_height*(2/3), 3, 3, image_angle, c_white, 1);
    break;
    case 5:
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"There are three main structures that are of interest. First is
your HOME. Here, the you can restore your shields, deposit
money into your savings, and save the game. Money placed in
your savings account is used to purchase your ticket to
PARADISE and is protected from fines and theft. However, one 
money is deposited, it cannot be withdrawn. Second is the SHOP,
where you can purchase upgrades for your ship. Third is the
DEPOT. Here, you can purchase a ticket to the galaxy PARADISE,
the location of an ancient and long sought after treasure. You
can interact with a structure by pressing ENTER."));
draw_sprite_ext(spr_home, 0, room_width/4, room_height*(2/3), 1, 1, image_angle, global.color, 1);
draw_sprite_ext(spr_home, 1, room_width/4, room_height*(2/3), 1, 1, image_angle, c_white, 1);
draw_sprite_ext(spr_dropoff, 0, room_width/2, room_height*(2/3), 1, 1, image_angle, c_white, 1);
draw_sprite_ext(spr_station, 0, room_width*(3/4), room_height*(2/3), 1, 1, image_angle, c_white, 1);
    break
    case 6:
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"There are also secondary structures that are more difficult to
find... See if you can discover them!"));
draw_sprite_ext(spr_garage, 0, room_width/4, room_height*(2/3), 1, 1, image_angle, c_white, 1);
draw_sprite_ext(spr_casino, 0, room_width/2, room_height*(2/3), 1, 1, image_angle, c_white, 1);  
draw_sprite_ext(spr_lasercolor, 0, room_width*(3/4), room_height*(2/3), 1, 1, image_angle, c_white, 1);
draw_sprite_ext(spr_lasercolor, 1, room_width*(3/4), room_height*(2/3), 1, 1, image_angle, c_red, 1);
    break;
    case 7:
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"Once you have fulfilled their respective requirements, you have
the option of joining one of four FACTIONS: the POLICE, the 
THIEVES, the ALIENS, and the CULTISTS. Each FACTION can be
joined by speaking with their FACTION LEADER: the POLICE CHIEF,
the MOB BOSS, the QUEEN, and DEAR LEADER, respectively. You can
also pay FACTION LEADERS to perform their ability. Each has a
unique one that can benefit you in different ways. You can pay
them to use the ability even if you are not part of their
faction or are part of a different faction"));
draw_sprite_ext(spr_policeboss, 0, room_width/5, room_height*(2/3), 3, 3, image_angle, c_white, 1);
draw_sprite_ext(spr_thiefboss, 0, room_width*(2/5), room_height*(2/3), 3, 3, image_angle, c_white, 1);
draw_sprite_ext(spr_alienqueen, 0, room_width*(3/5), room_height*(2/3), 3, 3, image_angle, c_white, 1);
draw_sprite_ext(spr_cultistboss, 0, room_width*(4/5), room_height*(2/3), 3, 3, image_angle, c_white, 1);
    break; 
    case 8:
draw_text(room_width/2, room_height/3.75, 
string_hash_to_newline(@"Joining a faction unlocks a special cargo type and both an
active and passive ability. Your ability can be used by 
pressing and then releasing SPACE. The cargo type is
delivered to a faction-specific dropzone which is indicated
with an arrow of your FACTION'S color."));
draw_sprite_ext(spr_cargo_police, 0, room_width/5, room_height*(4/8), 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_cargo_thief, 0, room_width/5, room_height*(5/8), 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_cargo_alien, 0, room_width/5, room_height*(6/8), 1, 1, 0, c_white, 1);       
draw_sprite_ext(spr_cargo_cult, 0, room_width/5, room_height*(7/8), 1, 1, 0, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_police);
draw_text((room_width/5)+16, room_height*(4/8), string_hash_to_newline("Status: Evidence"));
draw_text(room_width*(3/5), room_height*(4/8), string_hash_to_newline("Active : [SEARCH]#Passive: [AUTHORITY]"));
draw_set_colour(c_thief);
draw_text((room_width/5)+16, room_height*(5/8), string_hash_to_newline("Status: Weaponry"));
draw_text(room_width*(3/5), room_height*(5/8), string_hash_to_newline("Active : [PICKPOCKET]#Passive: [AFFILIATION]"));
draw_set_colour(c_alien);
draw_text((room_width/5)+16, room_height*(6/8), string_hash_to_newline("Status: Organic"));
draw_text(room_width*(3/5), room_height*(6/8), string_hash_to_newline("Active : [SWARM]#Passive: [HIVEMIND]"));
draw_set_colour(c_cult);
draw_text((room_width/5)+16, room_height*(7/8), string_hash_to_newline("Status: Ancient"));
draw_text(room_width*(3/5), room_height*(7/8), string_hash_to_newline("Active : [CONVERT]#Passive: [BOND]"));
break;
    case 9:
draw_text(room_width/2, room_height/3.75, string_hash_to_newline("The universe has much to offer... Begin your adventure!"));
draw_sprite_ext(spr_player, 0, room_width/2, room_height*(2/3), 5, 5, image_angle, global.color, 1);
draw_sprite_ext(spr_player, 1, room_width/2, room_height*(2/3), 5, 5, image_angle, c_white, 1);
    break;
}

draw_set_font(fnt_hud);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_width-16, string_hash_to_newline("Press SPACE to continue."));

