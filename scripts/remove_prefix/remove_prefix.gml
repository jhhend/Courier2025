/// @description remove_prefix(room)
/// @param room
function remove_prefix(argument0) {

	var r = string_delete(room_get_name(argument0), 1, 3);

	return r;



}
