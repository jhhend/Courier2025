room_goto(destination);

if global.tdir == TO {
    global.tdir = FROM;
} else if global.tdir == FROM {
    global.tdir = TO;
}

