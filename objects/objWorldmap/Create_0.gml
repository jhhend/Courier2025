
var keys = global.areas.keys();

for (var i = 0; i < array_length(keys); i++) {
	var key = keys[i];
	var area = global.areas.get(key);
	
	var poi = instance_create_layer(0, 0, "Worldmap", objWorldmapArea);
	poi.init(area);
	
}
