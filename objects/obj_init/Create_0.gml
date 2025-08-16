randomize(); //set a random seed

//player stats
global.money = 0; //currency
global.savings = 0; //stored currency
global.ticket = false //whether the player can travel to paradise
global.hud = 0; //systems
global.shd = 0; //sheilds
global.wep = 0; //weapons
global.maxshields = 0;
global.shields = global.maxshields;
global.faction = -1;

//casino
global.pot = 3500; //the total money amount in the casino pot
global.banned = false; //whether the player is banned from the casino or not
global.bettype = 16; //the bet amount where the bet is (1/n)*total money

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
global.legaltotal = 0; //total legal packages delivered
global.illegaltotal = 0; //total illegal packages delivered
global.factiontotal = 0; //total faction packages delivered
global.kills = 0; //total number of kills
global.betray = false; //whether the player has joined and betrayed a faction
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

