switch (hp) {
    case 2:
        image_index = 1;
        break;
    case 1:
    case 0:
        image_index = 0;
        orbspd = 2.5;
        break;
}

image_angle += hp;

orbstp += orbspd;

x = obj_pod.x + lengthdir_x(dist, orbstp);
y = obj_pod.y + lengthdir_y(dist, orbstp);

