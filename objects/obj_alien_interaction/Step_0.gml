// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length_1d(text) - 1) {
    placement += 1;
}

if global.calm == false {
    text[0] = "Calm Hive ($" + string(price) + ")";
} else if global.calm == true {
    text[0] = "Calm Hive ($0)";
}

//set tagline
switch (placement) {
    case 0: //remove_charge
        if global.calm = false {
            tagline = "The Queen approaches as if she has something to offer.";
            subtag = "Ensures that aliens will not spawn from hives.";
        } else {
            tagline = "The Queen seems confused at your presence.";
            subtag = "Ability unavailable: Hives already calmed!";
        }
        break;
    case 1: //inquire
        if global.kills >= 10 && global.faction == -1 {
            //able to join
            tagline = "The Queen looks at you with great interest.";
            subtag = "Able to join!";
        }  else if global.kills < 10 && global.faction == -1 {
            //unable to join because of requirement
            tagline = "The Queen seems indifferent about your presence."
            subtag = string(global.kills) + "/10 humans killed.";
        } else if global.faction != -1 && global.faction != ALIEN {
            //unable to join because of faction
            tagline = "The Queen looks at you with great disgust.";
            subtag = "Unable to join when part of another faction.";
        } else if global.faction == ALIEN {
            //leave
            tagline = "The Queen looks at you with a sad expression.";
            subtag = "";
        }
        break;
    case 2: //back
        tagline = ""
        break;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //calm hive
            if global.calm == false && global.money >= price {
                play_sound(snd_money, 1, false);
                global.money -= price;
                global.calm = true;
            }
            break;
        case 1: //inquire
            if global.kills >= 10 && global.faction == -1 {
                destroy_self();
                instance_create(x, y, obj_alien_offer);
            } else if global.faction == ALIEN {
                global.faction = -1;
                room_goto(rm_Axion);
            }
            play_sound(snd_select, 1, false);
            break;
        case 2: //back
            play_sound(snd_select, 1, false);
            room_goto(rm_Axion);
            break;
    }
}


