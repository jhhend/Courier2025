
function Cargo() constructor {

	name = "";
	minPrice = 50;
	maxPrice = 99;
	price = 0;
	type = CargoType.Normal;
	color = c_aqua;
	destination = undefined;
	sprite = spr_cargo;
	spriteIndex = irandom(3);
	illegal = false;

	static generatePrice = function() {
		var p = irandom_range(minPrice, maxPrice);
		if (global.blessing) {
			p = ceil(p * 1.3);
		}
		return p;
	}
	
	static generateDestination = function() {
		var roomPool = [ rm_Majorin, rm_Minoran, rm_Bask_Major, rm_Bask_Minor, rm_Axion, rm_Korda ];
		var dest;
		do {
			dest = roomPool[irandom_range(0, array_length(roomPool) - 1)];
		} until (dest != room);
		return dest;
	}

	static generateName = function() {
		return choose("A", "B", "C", "D") + string(price) + choose("W", "X", "Y", "Z");
	}

	static generateDetails = function() {
		price = generatePrice();
		destination = generateDestination();
		name = generateName();
	}
	
	generateDetails();
}

function CargoIllegal() : Cargo() constructor {
	type = CargoType.Illegal;
	color = c_red;
	illegal = true;
	
	generateDetails();
}

function CargoRepublic() : Cargo() constructor {
	type = CargoType.Republic;
	color = c_police;
	sprite = spr_cargo_police;
	static generateDestination = function() { return rm_Majorin }
	minPrice = 100;
	maxPrice = 150;
	
	generateDetails();
}

function CargoMafia() : Cargo() constructor {
	type = CargoType.Mafia;
	color = c_thief;
	sprite = spr_cargo_thief;
	static generateDestination = function() { return rm_Bask_Major }
	illegal = true;
	minPrice = 125;
	maxPrice = 175;
	
	generateDetails();
}

function CargoAlien() : Cargo() constructor {
	type = CargoType.Alien;
	color = c_alien;
	sprite = spr_cargo_alien;
	destination = rm_Axion;
	static generateDestination = function() { return rm_Axion }
	minPrice = 100;
	maxPrice = 125;
	
	generateDetails();
}

function CargoCult() : Cargo() constructor {
	type = CargoType.Cult;
	color = c_cult;
	sprite = spr_cargo_cult;
	destination = rm_Korda;
	static generateDestination = function() { return rm_Korda }
	minPrice = 100;
	maxPrice = 100 + global.cultPower;
	
	generateDetails();
}
