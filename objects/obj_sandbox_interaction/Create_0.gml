switch (global.endcolor) {
    case c_red:
        colstring = "Red"; break;
    case c_orange:
        colstring = "Orange"; break;
    case c_yellow:
        colstring = "Yellow"; break;
    case c_green:
        colstring = "Green"; break;
    case c_aqua:
        colstring = "Aqua"; break;
    case c_blue:
        colstring = "Blue"; break;
    case c_purple:
        colstring = "Purple"; break;
    case c_white:
        colstring = "White"; break;
}

switch (global.endamount) {
    case FEW:
        amstring = "Few"; break;
    case SOME:
        amstring = "Some"; break;
    case MANY:
        amstring = "Many"; break;
    case EXTREME:
        amstring = "Extreme"; break;
}

switch (global.endspawn) {
    case true:
        spawnstring = "On"; break;
    case false:
        spawnstring = "Off"; break;
}

switch (global.endentity) {
    case noone:
        entitystring = "None"; break;
    case obj_civillian:
        entitystring = "Civillian"; break;
    case obj_thief:
        entitystring = "Thief"; break;
    case obj_hive:
        entitystring = "Hive"; break;
    case obj_cultist:
        entitystring = "Cultist"; break;
    case obj_cultistturret:
        entitystring = "Cultist Turret"; break;
}

switch (global.endentityamount) {
    case FEW:
        eamstring = "Few"; break;
    case SOME:
        eamstring = "Some"; break;
    case MANY:
        eamstring = "Many"; break;
    case EXTREME:
        eamstring = "Extreme"; break; 
}

text[0] = "Star Color: " + string(colstring);
text[1] = "Star Density: " + string(amstring);
text[2] = "Asteroid Spawn: " + string(spawnstring);
text[3] = "Entity Spawn: " + string(entitystring);
text[4] = "Entity Density: " + string(eamstring);
text[5] = "Return to Majorin Systems"
text[6] = "Back";

placement = 0;

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(0, room_width);
    bkycoord[j] = random_range(0, room_height);
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(5);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

global.prevroom = rm_sandbox_interaction;

