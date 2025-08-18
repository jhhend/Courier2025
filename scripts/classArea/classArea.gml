
function Area() constructor {

	name = "Area";
	type = AreaType.Area;
	colors = [ ];
	roomRef = undefined;

	map = {
		size: 0,
		starCount: 0,
		x: function() { return 0; },
		y: function() { return 0; }
	};

}

function AreaMajorin() : Area() constructor {
	name = "Majorin";
	type = AreaType.Majorin;
	colors = COLORS_MAJORIN;
	roomRef = rm_Majorin;
	
	map = {
		size: 85,
		starCount: 1000,
		x: function() { return room_width/2; },
		y: function() { return room_height/2; }
	};
	
}

function AreaMinoran() : Area() constructor {
	name = "Minoran";
	type = AreaType.Minoran;
	colors = COLORS_MAJORIN;
	roomRef = rm_Minoran;
	
	map = {
		size: 85/2,
		starCount: 300,
		x: function() { return (room_width/2)-150; },
		y: function() { return (room_height/2)+110; },
	};
}

function AreaBaskMajor() : Area() constructor {
	name = "Bask Major";
	type = AreaType.BaskMajor;
	colors = COLORS_BASK;
	roomRef = rm_Bask_Major;
	
	map = {
		size: 85/1.5,
		starCount: 300,
		x: function() { return room_width*(4/5); },
		y: function() { return room_height*(2/8) }		
	};
}

function AreaBaskMinor() : Area() constructor {
	name = "Bask Minor";
	type = AreaType.BaskMinor;
	colors = COLORS_BASK;
	roomRef = rm_Bask_Minor;
	
	map = {
		size: 85/3,
		starCount: 300,
		x: function() { return (room_width/2)+16; },
		y: function() { return room_height*(1.75/8)-24; }
	};
}

function AreaAxion() : Area() constructor {
	name = "Axion";
	type = AreaType.Axion;
	colors = COLORS_AXION;
	roomRef = rm_Axion;
	
	map = {
		size: 85/2,
		starCount: 500,
		x: function() { return room_width/5; },
		y: function() { return room_height/5; }
	};
}

function AreaKorda() : Area() constructor {
	name = "Korda";
	type = AreaType.Korda;
	colors = COLORS_KORDA;
	roomRef = rm_Korda;
	
	map = {
		size: 85/4,
		starCount: 200,
		x: function() { return room_width*(7/8) },
		y : function() { return room_height*(7/8) }		
	};
}

global.areas = new Map();

for (var i = AreaType.Majorin; i < AreaType.Count; i++) {
	global.areas.set(i, createArea(i));
}
