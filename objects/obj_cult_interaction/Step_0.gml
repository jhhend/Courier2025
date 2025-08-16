// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

if !global.blessing {
    text[0] = "Recieve Blessing ($" + string(price) + ")";
} else if global.blessing {
    text[0] = "Recieve Blessing ($0)";
}

//set tagline
switch (placement) {
    case 0: //set blessing
        if global.blessing {
            tagline = "You have been blessed, my child.";
            subtag = "Ability unavailable: Blessing already recieved!"
        } else if !global.blessing {
            tagline = "Have you come to recieve my blessing, child?";
            subtag = "Boosts the value of new cargo temporarily."
        }
        break;
    case 1: //inquire
        if global.state.faction != -1 && global.state.faction != CULT {
            tagline = "We do not do deals with outsiders.";
            subtag = "Unable to join when part of another faction."
        } else if !global.state.betray {
            tagline = "You are not worthy.";
            subtag = "Opposing faction has not been betrayed."
        } else if global.state.betray && global.state.faction == -1 {
            tagline = "You have proven yourself worthy of salvation.";
            subtag = "Able to join!";
        } else if global.state.faction == CULT {
            //leave
            tagline = "Questioning your faith, my child?";
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
        case 0: //perform raid
            if !global.blessing && price <= global.state.money {
                play_sound(snd_money, 1, false);
                global.blessing = true
                global.state.money -= price;
            }
            break;
        case 1: //inquire
            if global.state.betray && global.state.faction == -1 {
                destroy_self();
                instance_create(x, y, obj_cult_offer);
            } else if global.state.faction == CULT {
                global.state.faction = -1;
                room_goto(rm_Korda);
            }
            play_sound(snd_select, 1, false);
            break;
        case 2: //back
            play_sound(snd_select, 1, false);
            room_goto(rm_Korda);
            break;
    }
}


