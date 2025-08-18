
enum AreaType {
	Area,
	Majorin,
	Minoran,
	BaskMajor,
	BaskMinor,
	Axion,
	Korda,
	Count
}

function createArea(type) {
	var c = Area;
	switch (type) {
		case AreaType.Majorin: c = AreaMajorin; break;
		case AreaType.Minoran: c = AreaMinoran; break;
		case AreaType.BaskMajor: c = AreaBaskMajor; break;
		case AreaType.BaskMinor: c = AreaBaskMinor; break;
		case AreaType.Axion: c = AreaAxion; break;
		case AreaType.Korda: c = AreaKorda; break;
	}
	return new c();
}
