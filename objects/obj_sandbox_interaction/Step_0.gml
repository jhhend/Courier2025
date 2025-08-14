//up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length_1d(text) - 1) {
    placement += 1;
}

text[0] = "Star Color: " + string(colstring);
text[1] = "Star Density: " + string(amstring);
text[2] = "Asteroid Spawn: " + string(spawnstring);
text[3] = "Entity Spawn: " + string(entitystring);
text[4] = "Entity Density: " + string(eamstring);
text[5] = "Return to Majorin Systems"
text[6] = "Back";

//select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //color change
            switch (global.endcolor) {
                case c_red:
                    global.endcolor = c_orange;
                    colstring = "Orange";
                    break;
                case c_orange:
                    global.endcolor = c_yellow;
                    colstring = "Yellow";
                    break;
                case c_yellow:
                    global.endcolor = c_green;
                    colstring = "Green";
                    break;
                case c_green:
                    global.endcolor = c_aqua;
                    colstring = "Aqua";
                    break;
                case c_aqua:
                    global.endcolor = c_blue;
                    colstring = "Blue";
                    break;
                case c_blue:
                    global.endcolor = c_purple;
                    colstring = "Purple";
                    break;
                case c_purple:
                    global.endcolor = c_white;
                    colstring = "White";
                    break;
                case c_white:
                    global.endcolor = c_red;
                    colstring = "Red";
                    break;
            }
            break;
        case 1: // star density
            switch (global.endamount) {
                case FEW:
                    global.endamount = SOME;
                    amstring = "Some";
                    break;
                case SOME:
                    global.endamount = MANY;
                    amstring = "Many";
                    break;
                case MANY:
                    global.endamount = EXTREME;
                    amstring = "Extreme";
                    break;
                case EXTREME:   
                    global.endamount = FEW;
                    amstring = "Few";
                    break;
            }
            break;
        case 2: // asteroid spawn
            switch (global.endspawn) {
                case true:
                    global.endspawn = false;
                    spawnstring = "Off";
                    break;
                case false:
                    global.endspawn = true;
                    spawnstring = "On";
                    break;
            }
            break;
        case 3: //entity spawn
            switch (global.endentity) {
                case noone:
                    global.endentity = obj_civillian
                    entitystring = "Civillian";
                    break;
                case obj_civillian:
                    global.endentity = obj_thief
                    entitystring = "Thief";
                    break;
                case obj_thief:
                    global.endentity = obj_hive
                    entitystring = "Hive";
                    break;
                case obj_hive:
                    global.endentity = obj_cultist;
                    entitystring = "Cultist";
                    break;
                case obj_cultist:
                    global.endentity = obj_cultistturret;
                    entitystring = "Cultist Turret";
                    break;
                case obj_cultistturret:
                    global.endentity = noone;
                    entitystring = "None";
                    break;
            }
            break;
        case 4: //entity density
            switch (global.endentityamount) {
                case FEW:
                    global.endentityamount = SOME;
                    eamstring = "Some";
                    break;
                case SOME:
                    global.endentityamount = MANY;
                    eamstring = "Many";
                    break;
                case MANY:
                    global.endentityamount = EXTREME;
                    eamstring = "Extreme";
                    break;
                case EXTREME:
                    global.endentityamount = FEW;
                    eamstring = "Few"
            }
            break;
        case 5: //return to majorin systems
            room_goto(rm_worldmap)
            break;
        case 6: //back
            room_goto(rm_sandbox_worldmap);
            break;
    }
    play_sound(snd_select, 1, false);
}


