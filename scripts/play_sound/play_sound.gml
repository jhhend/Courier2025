/// @description play_sound(snd, priority, loop)
/// @param snd
/// @param  priority
/// @param  loop
function play_sound(argument0, argument1, argument2) {

	if global.sound {
	    audio_play_sound(argument0, argument1, argument2);
	}



}
