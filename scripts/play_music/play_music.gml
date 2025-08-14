/// @description play_music(snd, priority, loop)
/// @param snd
/// @param  priority
/// @param  loop
function play_music(argument0, argument1, argument2) {

	if global.music {
	    audio_play_sound(argument0, argument1, argument2);
	}



}
