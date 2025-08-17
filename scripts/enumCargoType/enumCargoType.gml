
enum CargoType {
	Normal,
	Illegal,
	Republic,
	Mafia,
	Alien,
	Cult
}

function createCargo(type) {
	var c = Cargo;
	switch (type) {
		case CargoType.Illegal: c = CargoIllegal; break;
		case CargoType.Republic: c = CargoRepublic; break;
		case CargoType.Mafia: c = CargoMafia; break;
		case CargoType.Alien: c = CargoAlien; break;
		case CargoType.Cult: c = CargoCult; break;
	}
	return new c();
}

function cargoTypeGetName(type) {
	var name = "Cargo";
	switch (type) {
		case CargoType.Illegal: name = "Illegal"; break;
		case CargoType.Republic: name = "Republic"; break;
		case CargoType.Mafia: name = "Mafia"; break;
		case CargoType.Alien: name = "Organic"; break;
		case CargoType.Cult: name = "Ancient"; break;
	}
	return name;
}
