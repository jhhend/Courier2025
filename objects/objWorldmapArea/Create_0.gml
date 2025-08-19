
stars = [ ];
starCount = 0;
area = undefined;
roomRef = undefined;
inRange = false;
name = "";
size = 0;
active = false;

init = function(areaObj) {
	area = areaObj;
	
	starCount = area.map.starCount;
	size = area.map.size;
	name = area.name;
	
	x = area.map.x();
	y = area.map.y();
	
	var colorBank = area.colors;
	
	// Generate the stars
	 for (var i = 0; i < starCount; i++) {
		 
		var angle = random(360);
		var dir = random(360);
		var dist = random(area.map.size);
		var conDir = random_range(.1, .3)
		 
		array_push(stars, {
			x: x + lengthdir_x(dist, dir),
			y: y + lengthdir_y(dist, dir),
			scale: random_range(1, 2.2),
			color: colorBank[irandom_range(0, array_length(colorBank) - 1)],
			angle,
			dir,
			dist,
			const: random_range(.1, .3),
			conDir
		});
    }
	
	active = true;
	show_debug_message("created");
	
}
