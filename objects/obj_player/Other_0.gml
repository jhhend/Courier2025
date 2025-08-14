if (room != rm_worldmap && room != rm_paradise_worldmap && room != rm_sandbox_worldmap) {
    global.prevroom = room;
    switch (room) {
        case rm_Paradise:
            room_goto(rm_paradise_worldmap);
            break;
        case rm_Sandbox:
            room_goto(rm_sandbox_worldmap);
            break;
        default:
            room_goto(rm_worldmap);
            break;
    }
}

