image_angle = random(360);
image_speed = 0;
image_index = choose(0, 1);

detrad = 64;

name = 0;
//determine destination
//create_name();
var r;
if room == rm_Bask_Minor || room == rm_Bask_Major {
    r = remove_prefix_underscore(room)
} else {
    r = remove_prefix(room);
}

do {
    destination = choose(   remove_prefix(rm_Majorin),
                            remove_prefix(rm_Minoran), 
                            remove_prefix(rm_Axion),
                            remove_prefix(rm_Korda),
                            remove_prefix_underscore(rm_Bask_Major),
                            remove_prefix_underscore(rm_Bask_Minor));
} until (r != destination);

//select status
switch global.state.faction {
    case -1:
        status = choose("Legal", "Legal", "Legal", "Legal", "Illegal");
        break;
    case POLICE:
        status = choose("Legal", "Legal", "Legal", "Illegal", "Police");
        break;
    case THIEF:
        status = choose("Legal", "Legal", "Legal", "Illegal", "Thief");
        break;
    case ALIEN:
        status = choose("Legal", "Legal", "Legal", "Illegal", "Alien");
        break;
    case CULT:
        status = choose("Legal", "Legal", "Legal", "Illegal", "Cult");
        break;
}

switch (status) {
    case "Police":
        image_index = 0;
        sprite_index = spr_cargo_police;
        destination = remove_prefix(rm_Majorin);
        break;
    case "Thief":
        image_index = 0;
        sprite_index = spr_cargo_thief;
        destination = remove_prefix_underscore(rm_Bask_Major);
        break;
    case "Alien":
        image_index = 0;
        sprite_index = spr_cargo_alien;
        destination = remove_prefix(rm_Axion);
        break;
    case "Cult":
        sprite_index = spr_cargo_cult;
        image_index = irandom_range(0, image_number - 1);
        destination = remove_prefix(rm_Korda);
        break;
    default:
        break;     
}

draw = false;

//determine name
create_name();

