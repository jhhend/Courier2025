
function play_music(sound, priority, loop) {
	if global.music {
	    audio_play_sound(sound, priority, loop);
	}
}
