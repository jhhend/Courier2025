image_angle -= .5;

orbstp += orbspd;

x = obj_dropoff.x + lengthdir_x(dist, orbstp);
y = obj_dropoff.y + lengthdir_y(dist, orbstp);

deliveryCheck();
