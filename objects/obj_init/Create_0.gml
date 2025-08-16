randomize(); //set a random seed

//player stats
global.maxshields = 0;
global.shields = global.maxshields;

//cosmetic
global.color = c_orange; //ship trim color
global.lasercolor = c_red; //laser color

//police
global.fine = 0; //fine to be paid if arrested
global.murder = 0; //number of civilians+police the player has murdered

//technical
global.xprev = -1; //previous x position of player
global.yprev = -1; //previous y position of player
global.prevroom = rm_Majorin; //previous room the player was in
global.thiefspawn = true; //whether thieves will spawn in bask systems
global.kills = 0; //total number of kills
global.blessing = false; //whether the player has received the cult blessing
global.cultpower = 0; //total cult power
global.calm = false; //whether alien hives are calm or not
global.tdir = TO; //depot travel direction
global.questphase = 0; //phase in questline
global.podspawn = true //whether boss can spawn


//sandbox
global.endcolor = c_white; //color fo stars
global.endamount = SOME; //amount of stars
global.endspawn = true; //whether asteroids will spawn or not
global.endentity = noone; //entity that will spawn
global.endentityamount = SOME; //amount of entities that will spawn

//create pause
instance_create(0, 0, obj_pause);

if !instance_exists(obj_fps_display) {
    instance_create(x, y, obj_fps_display);
}

load_options();

room_goto_next();

