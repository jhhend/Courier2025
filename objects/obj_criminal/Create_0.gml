
event_inherited();

image_angle = random(360);
direction = image_angle;
speed = .5;
radius = 64;
type = CargoType.Illegal;
destination = room;
allowIllegal = true;

amount = 0.05;
turnamount = choose(amount, -amount);
alarm[0] = room_speed*random_range(5, 6); //turn

