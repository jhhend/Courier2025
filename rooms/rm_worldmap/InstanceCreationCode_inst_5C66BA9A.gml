x = room_width*(8/9)-16;
y = (room_height/2)+32;

amount = 300/3;
dist = 85/3.5;
name = "SOCKET";

if (name == "SHOP" || name == "HOME" || name == "DEPOT" || name == "SOCKET") {
    depth = -1;
}

if global.questphase <= 2{
    destroy_self();
}