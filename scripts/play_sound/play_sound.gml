
function play_sound(sound, priority, loop) {
	if (global.settings.get("sound")) {
	    audio_play_sound(sound, priority, loop);
	}
}
