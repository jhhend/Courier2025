price = (global.murder*125)
text[0] = "Remove Murder Charges ($" + string(price) + ")";

// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

//set tagline
switch (placement) {
    case 0: //remove_charge
        if global.murder > 0 {
            tagline = "Time is money. Let's make a deal, shall we?";
            subtag = "Removes your wanted level.";
        } else {
            tagline = "You're squeaky clean, kid.";
            subtag = "Ability unavailable: No wanted level to clear!";
        }
        break;
    case 1: //inquire
        if global.state.faction != -1 {
            tagline = "Get lost. We don't deal with your kind."
            subtag = "Unable to join when part of another faction." 
        } else if global.state.illegalTotal < 10 {
            tagline = "You aren't ready, kid. Do somethin' for me first.";
            subtag = string(global.state.illegalTotal) + "/10 Contraband Delivered.";
        } else if global.state.illegalTotal >= 10 {
            tagline = "Perhaps we could work out an arangement...";
            subtag = "Able to join!"
        } else if global.state.faction == THIEF {
            tagline = "Giving up fame and fortune, huh?";
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
        case 0: //remove charge
            if global.murder > 0 && global.state.money >= price {
                play_sound(snd_money, 1, false);
                global.state.money -= price;
                global.murder = 0;
            }
            break;
        case 1: //inquire
            if (global.state.illegalTotal >= 10 && global.state.faction == -1) {
                destroy_self();
                instance_create(x, y, obj_thief_offer);  
            } else if global.state.faction == THIEF {
                global.state.faction = -1;
                room_goto(rm_Bask_Major);
            }
            play_sound(snd_select, 1, false);
            break;
        case 2: //back
            play_sound(snd_select, 1, false);
            //global.prevroom = rm_home;
            room_goto(rm_Bask_Major);
            break;
    }
}


