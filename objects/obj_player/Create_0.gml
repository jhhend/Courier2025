//initialize variables
depth = -1;
dp = 16;
radius = 96;
drawability = false;
canroll = true;
shake = 0;
drawegg = false;
eggalpha = 0

state = player_move;

//determine ability cooldown
player_cooldown();

//place at proper coordinates
player_determine_position();

//create pause object
if !instance_exists(obj_pause) {
    instance_create(0, 0, obj_pause);
}

//create view object
if !instance_exists(obj_view) {
    instance_create(0, 0, obj_view);
}

//reset hive calm rating
if room == rm_worldmap && global.calm == true {
    global.calm = false;
}

if room == rm_worldmap {
    global.tdir = TO;
} else if room == rm_paradise_worldmap {
    global.tdir = FROM;
}

