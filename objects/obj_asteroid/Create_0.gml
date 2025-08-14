rot = choose(.5, 1);
rotdir = choose(0, 1);

var c = irandom_range(75, 125);
s = random_range(.5, 2);

image_angle = random(360);
image_blend = make_colour_rgb(c, c, c);
image_xscale = s;
image_yscale = s;
direction = image_angle;
speed = rot;

