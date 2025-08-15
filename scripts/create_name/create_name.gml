function create_name() {
	//determine price
	switch (status) {
	    case "Police":
	        price = irandom_range(100, 150); break;
	    case "Thief":
	        price = irandom_range(125, 175); break;
	    case "Alien":
	        price = irandom_range(75, 125); break;
	    case "Cult":
	        price = irandom_range(100, 100+global.cultpower); break;
	    default:
	        price = irandom_range(10, 99); break;
	}

	//determine letters
	if global.blessing {
	    name = choose("A", "B", "C", "D") + string(clamp(price*3, 1, 999)) + choose("W", "X", "Y", "Z");
	} else {
	    name = choose("A", "B", "C", "D") + string(price) + choose("W", "X", "Y", "Z");
	}



}
