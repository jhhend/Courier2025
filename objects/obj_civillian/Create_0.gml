
image_angle = random(360);
direction = image_angle;
image_speed = 0;
image_index = irandom_range(0, image_number - 1);
speed = random_range(3, 4);

//if player is part of police faction, determine legality of ship
if (global.faction == FactionType.Republic) {
    if chance(.2) {
        illegal = true;
        price = irandom_range(10, 100)
    } else {
        illegal = false;
        price = 0;
    }
}

//thief faction variables
if chance(.2) {
    stolen = true;
} else {
    stolen = false;
}

//cult faction variables
cult = false;

//turn varaibles
amount = 0.1;
turnamount = choose(amount, -amount);
alarm[0] = room_speed*random_range(5, 6); //turn
