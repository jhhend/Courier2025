/// @description remove_prefix_underscore(room)
/// @param room
function remove_prefix_underscore(argument0) {

	var r = string_replace(string_delete(room_get_name(argument0), 1, 3), "_", " ")

	return r;



}
