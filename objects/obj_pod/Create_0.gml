x = room_width/2;
y = room_height/2;
scale = 1;
image_xscale = scale;
image_yscale = scale;
image_speed = 0;
image_index = 4;

hp = 10;
phase = 3;
angle = 0;
alarmspeed = 1;
angoffset = 45;
cardinal = UP;
offset = 96;
spd = 5;
for (var i = 0; i < 5; i++) {
    var dir = random(360);
    var o = instance_create(x+lengthdir_x(offset, dir), y+lengthdir_y(offset, dir), obj_rotpod);
    var of = offset;
    var s = spd
    with (o) {
        dist = of;
        orbspd = s;
        orbstp = 0;
    }
    offset += 96;
    spd -= 1;
}

