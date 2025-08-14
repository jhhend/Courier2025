/// @description clear_slot(slot)
/// @param slot
function clear_slot(argument0) {
	global.hull[argument0] = " ";
	global.slotcol[argument0] = c_white;
	global.cargoname[argument0] = ""; 
	global.cargoval[argument0] = "";
	global.cargodest[argument0] = "";
	global.cargostat[argument0] = "";



}
