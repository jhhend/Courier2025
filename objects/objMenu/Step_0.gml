
// Up/down movement
if (keyboard_check_pressed(ord("W")) && current > 0) {
    current--;
} else if (keyboard_check_pressed(ord("S")) && current < (array_length(text) - 1)) {
    current++;
}



if global.thiefspawn {
    text[0] = "Perform Thief Raid ($" + string(price) + ")";
} else if !global.thiefspawn {
    text[0] = "Perform Theif Raid ($0)"
}

//set tagline
switch (current) {
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
        if global.state.legalTotal >= 10 && global.faction == -1 {
            //able to join
            tagline = "I believe we have a position we could offer you.";
            subtag = "Able to join!"
        } else if global.state.legalTotal < 10 && global.faction == -1 {
            //unable to join because of requirement
            tagline = "We have a thorough vetting process within the department.";
            subtag = string(global.state.legalTotal) + "/10 Legal Cargo Delivered.";
        } else if global.faction != -1 && global.faction != FactionType.Republic {
            //unable to join because of faction
            tagline = "Complete loyalty to the force is required.";
            subtag = "Unable to join when part of another faction.";
        } else if global.faction == FactionType.Republic {
            //leave
            tagline = "I hope you reconsider your decision.";
            subtag = ""; 
        }
        break;
    case 2: //back
        tagline = ""
        break;
}

// Select option
if (keyboard_check_pressed(vk_enter)) {
	var currentOption = text[current];
	currentOption.action();
}
