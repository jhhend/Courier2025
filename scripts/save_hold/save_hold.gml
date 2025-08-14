/// @description save_hold()
function save_hold() {

	//encode
	var s_hold0 = base64_encode(string(global.hull[0]));
	var s_slotcol0 = base64_encode(string(global.slotcol[0]));
	var s_cargoval0 = base64_encode(string(global.cargoval[0]));
	var s_cargoname0 = base64_encode(string(global.cargoname[0]));
	var s_cargodest0 = base64_encode(string(global.cargodest[0]));
	var s_cargostat0 = base64_encode(string(global.cargostat[0]));

	var s_hold1 = base64_encode(string(global.hull[1]));
	var s_slotcol1 = base64_encode(string(global.slotcol[1]));
	var s_cargoval1 = base64_encode(string(global.cargoval[1]));
	var s_cargoname1 = base64_encode(string(global.cargoname[1]));
	var s_cargodest1 = base64_encode(string(global.cargodest[1]));
	var s_cargostat1 = base64_encode(string(global.cargostat[1]));

	var s_hold2 = base64_encode(string(global.hull[2]));
	var s_slotcol2 = base64_encode(string(global.slotcol[2]));
	var s_cargoval2 = base64_encode(string(global.cargoval[2]));
	var s_cargoname2 = base64_encode(string(global.cargoname[2]));
	var s_cargodest2 = base64_encode(string(global.cargodest[2]));
	var s_cargostat2 = base64_encode(string(global.cargostat[2]));

	//write
	ini_write_string("HOLD", "SLOT0", s_hold0);
	ini_write_string("HOLD", "COL0", s_slotcol0);
	ini_write_string("HOLD", "VAL0", s_cargoval0);
	ini_write_string("HOLD", "NAME0", s_cargoname0);
	ini_write_string("HOLD", "DEST0", s_cargodest0);
	ini_write_string("HOLD", "STAT0", s_cargostat0);

	ini_write_string("HOLD", "SLOT1", s_hold1);
	ini_write_string("HOLD", "COL1", s_slotcol1);
	ini_write_string("HOLD", "VAL1", s_cargoval1);
	ini_write_string("HOLD", "NAME1", s_cargoname1);
	ini_write_string("HOLD", "DEST1", s_cargodest1);
	ini_write_string("HOLD", "STAT1", s_cargostat1);

	ini_write_string("HOLD", "SLOT2", s_hold2);
	ini_write_string("HOLD", "COL2", s_slotcol2);
	ini_write_string("HOLD", "VAL2", s_cargoval2);
	ini_write_string("HOLD", "NAME2", s_cargoname2);
	ini_write_string("HOLD", "DEST2", s_cargodest2);
	ini_write_string("HOLD", "STAT2", s_cargostat2);



}
