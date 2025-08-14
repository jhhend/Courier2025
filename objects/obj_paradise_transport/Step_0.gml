//create moving effect
for (var i = 0; i <= staramount; i++) {
    switch (global.tdir) {
        case TO:
            if bkxcoord[i] >= room_width {
                bkxcoord[i] = 0;
            } else if bkxcoord[i] < room_width {
                bkxcoord[i] = bkxcoord[i] + offset;
            }
            break;
        case FROM:
            if bkxcoord[i] <= 0 {
                bkxcoord[i] = room_width
            } else if bkxcoord[i] > 0 {
                bkxcoord[i] = bkxcoord[i] - offset;
            }
            break;
    }
}

if offset < 10 {
    offset += .1;
}

switch (global.tdir) {
    case TO:
        image_angle += offset*1.5; break;
    case FROM:
        image_angle -= offset*1.5; break;
}

var e = instance_create(x, y, obj_transport_particle);
var i = id;
var o = offset;
with (e) {
    creator = i;
    offset = o;
}

