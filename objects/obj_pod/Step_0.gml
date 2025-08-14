image_angle += hp;
image_index = (phase + 1);

if instance_number(obj_rotpod) <= 0 && alarm[0] < 0 {
    alarm[0] = room_speed*alarmspeed;
}

if hp < 0 {
    phase--;
    hp = 10;
}

if phase < 0 {
    destroy_self();
}
switch (phase) {
    case 0:
        alarmspeed = .6; break;
    case 1:
        alarmspeed = .8; break;
    case 2:
        alarmspeed = 1; break;
    case 3:
        alarmspeed = 1.2;break;
}

//rangealpha *= .8;

