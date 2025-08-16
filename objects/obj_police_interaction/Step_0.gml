// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

if global.thiefspawn {
    text[0] = "Perform Thief Raid ($" + string(price) + ")";
} else if !global.thiefspawn {
    text[0] = "Perform Theif Raid ($0)"
}

//set tagline
switch (placement) {
    case 0: //set thiefspawn
        if global.thiefspawn {
            tagline = "Have any information about the thieves' whereabouts?";
            subtag = "Thieves will not spawn the next time a Bask system is visted."
        } else if !global.thiefspawn {
            tagline = "No need to worry about the thieves for now, citizen.";
            subtag = "Ability unavailable: Raid already conducted!"
        }
        break;
    case 1: //inquire/leave
        if global.state.legalTotal >= 10 && global.state.faction == -1 {
            //able to join
            tagline = "I believe we have a position we could offer you.";
            subtag = "Able to join!"
        } else if global.state.legalTotal < 10 && global.state.faction == -1 {
            //unable to join because of requirement
            tagline = "We have a thorough vetting process within the department.";
            subtag = string(global.state.legalTotal) + "/10 Legal Cargo Delivered.";
        } else if global.state.faction != -1 && global.state.faction != POLICE {
            //unable to join because of faction
            tagline = "Complete loyalty to the force is required.";
            subtag = "Unable to join when part of another faction.";
        } else if global.state.faction == POLICE {
            //leave
            tagline = "I hope you reconsider your decision.";
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
            if global.thiefspawn && global.state.money >= price {
                play_sound(snd_money, 1, false);
                global.state.money -= price;
                global.thiefspawn = false;
            }
            break;
        case 1: //inquire/leave
            if global.state.legalTotal >= 10 && global.state.faction == -1 {
                destroy_self();
                instance_create(x, y, obj_police_offer);
            } else if global.state.faction == POLICE {
                global.state.faction = -1;
                room_goto(rm_Majorin);
            }
            play_sound(snd_select, 1, false);
            break;
        case 2: //back
            play_sound(snd_select, 1, false);
            room_goto(rm_Majorin);
            break;
    }
}


