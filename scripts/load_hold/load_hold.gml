/// @description load_hold()
function load_hold() {

	//read
	var l_hold0 = ini_read_string("HOLD", "SLOT0", " ");
	var l_slotcol0 = ini_read_string("HOLD", "COL0", c_white);
	var l_cargoval0 = ini_read_string("HOLD", "VAL0", "");
	var l_cargoname0 = ini_read_string("HOLD", "NAME0", "");
	var l_cargodest0 = ini_read_string("HOLD", "DEST0", "");
	var l_cargostat0 = ini_read_string("HOLD", "STAT0", "");

	var l_hold1 = ini_read_string("HOLD", "SLOT1", " ");
	var l_slotcol1 = ini_read_string("HOLD", "COL1", c_white);
	var l_cargoval1 = ini_read_string("HOLD", "VAL1", "");
	var l_cargoname1 = ini_read_string("HOLD", "NAME1", "");
	var l_cargodest1 = ini_read_string("HOLD", "DEST1", "");
	var l_cargostat1 = ini_read_string("HOLD", "STAT1", "");

	var l_hold2 = ini_read_string("HOLD", "SLOT2", " ");
	var l_slotcol2 = ini_read_string("HOLD", "COL2", c_white);
	var l_cargoval2 = ini_read_string("HOLD", "VAL2", "");
	var l_cargoname2 = ini_read_string("HOLD", "NAME2", "");
	var l_cargodest2 = ini_read_string("HOLD", "DEST2", "");
	var l_cargostat2 = ini_read_string("HOLD", "STAT2", "");

	//decode
	global.hull[0] = string(base64_decode(l_hold0));
	global.slotcol[0] = real(base64_decode(l_slotcol0));
	global.cargoval[0] = string(base64_decode(l_cargoval0));
	global.cargoname[0] = string(base64_decode(l_cargoname0));
	global.cargodest[0] = string(base64_decode(l_cargodest0));
	global.cargostat[0] = string(base64_decode(l_cargostat0));

	global.hull[1] = string(base64_decode(l_hold1));
	global.slotcol[1] = real(base64_decode(l_slotcol1));
	global.cargoval[1] = string(base64_decode(l_cargoval1));
	global.cargoname[1] = string(base64_decode(l_cargoname1));
	global.cargodest[1] = string(base64_decode(l_cargodest1));
	global.cargostat[1] = string(base64_decode(l_cargostat1));

	global.hull[2] = string(base64_decode(l_hold2));
	global.slotcol[2] = real(base64_decode(l_slotcol2));
	global.cargoval[2] = string(base64_decode(l_cargoval2));
	global.cargoname[2] = string(base64_decode(l_cargoname2));
	global.cargodest[2] = string(base64_decode(l_cargodest2));
	global.cargostat[2] = string(base64_decode(l_cargostat2));
}
