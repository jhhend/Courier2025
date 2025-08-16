/// @description fine_arrested()
function fine_arrested() {
	//add contraband fine
	var fine_temp = 0;
	for (var i = 0; i < 3; i++) {
	    if global.cargostat[i] == "Illegal" {
	        var a = string_delete(global.cargoname[i], 1, 1);
	        var b = string_delete(a, 3, 3);
	        var f = floor(2.5*real(b));
	        fine_temp += f;
	    }
	    if global.cargostat[i] == "Thief" {
	        var a = string_delete(global.cargoname[i], 1, 1);
	        var b = string_delete(a, 4, 4);
	        var g = floor(3*real(b));
	        fine_temp += g;
	    }
	}

	//add murder fine
	for (var j = 0; j <= global.murder; j++) {
	    if (j > 0) { 
	        fine_temp += 100;
	    }
    
	    if (j > 1) {
	        fine_temp += ((j - 1)*20);
	    }
	}

	//set fine to f or total money if fine is too large
	if global.money < fine_temp {
	    global.fine = global.money;
	} else if global.money >= fine_temp {
	    global.fine = fine_temp;
	}

	jettison_cargo();
	room_goto(rm_arrested);
}
