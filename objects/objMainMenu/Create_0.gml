
event_inherited();

/*
main
	play
		tutorial
	options
		deleteSaveConfirm
*/

#region Menu - main

var main = new Menu(id, {
	title: "COURIER"
});

main.addOption(MenuLineSwitch, {
	text: "Play",
	target: "play"
});

main.addOption(MenuLineSwitch, {
	text: "Options",
	target: "options"
});

main.addOption(MenuLine, {
	text: "Credits"
});

main.addOption(MenuLine, {
	text: "Quit",
	action: function() {
		save_options();
		game_end();
	}
});

menus.add("main", main);

#endregion

#region Menu - options

var options = new Menu(id, {
	title: "Options"
});

options.addOption(MenuLine, {
	text: function() { return $"Sound: {global.settings.get("sound") ? "On" : "Off"}"; },
	action: function() { global.settings.toggle("sound"); }
});

options.addOption(MenuLine, {
	text: function() { return $"Music: {global.settings.get("music") ? "On" : "Off"}"; },
	action: function() { global.settings.toggle("music"); }
});

options.addOption(MenuLine, {
	text: function() { return $"Fullscreen: {global.settings.get("fullscreen") ? "On" : "Off"}" },
	action: function() {
		global.settings.toggle("fullscreen");
		window_set_fullscreen(global.settings.get("fullscreen"));
	}
});

options.addOption(MenuLine, {
	text: function() { return $"FPS Counter: {global.settings.get("showFps") ? "On" : "Off"}"; },
	action: function() { global.settings.toggle("showFps"); }
});

options.addOption(MenuLineSwitch, {
	text: "Delete Save",
	target: "deleteSaveConfirm"
});

options.addOption(MenuLineSwitch, {
	text: "Back",
	target: "main"
});

menus.add("options", options);

#endregion

#region Menu - play

var play = new Menu(id, {
	title: "Play"
});

play.addOption(MenuLine, {
	text: "Load Save"
});

play.addOption(MenuLineSwitch, {
	text: "New Game",
	target: "tutorial"
});

play.addOption(MenuLineSwitch, {
	text: "Back",
	target: "main"
});

menus.add("play", play);

#endregion 

#region Menu - tutorial

var tutorial = new Menu(id, {
	title: "Play Tutorial?"
});

tutorial.addOption(MenuLine, {
	text: "Yes"
});

tutorial.addOption(MenuLine, {
	text: "No"
});

tutorial.addOption(MenuLineSwitch, {
	text: "Back",
	target: "play"
})

menus.add("tutorial", tutorial);

#endregion 

#region Menu - deletesaveconfirm

var deleteSaveConfirm = new Menu(id, {
	title: "Are you sure?",
	titleColor: c_thief
});

deleteSaveConfirm.addOption(MenuLine, {
	text: "Yes"
});

deleteSaveConfirm.addOption(MenuLine, {
	text: "No"
});

deleteSaveConfirm.addOption(MenuLineSwitch, {
	text: "Back",
	target: "options"
})

menus.add("deleteSaveConfirm", deleteSaveConfirm);

#endregion
