//set blessing alarm if blessing is active
if global.blessing && alarm[0] < 0 {
        alarm[0] = room_speed*(180); //three minutes
}

//DEPOT ALARM
if global.ticket && alarm[1] < 0 {
    alarm[1] = MINUTE*2.5;
}

//clamp money
if (global.money < 0) {
    global.money = 0;
}

