
function play_music(sound, priority, loop) {
	if (global.settings.get("music")) {
	    audio_play_sound(sound, priority, loop);
	}
}
