
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

main.addOption(MenuOptionSwitch, {
	text: "Play",
	target: "play"
});

main.addOption(MenuOptionSwitch, {
	text: "Options",
	target: "options"
});

main.addOption(MenuOption, {
	text: "Credits"
});

main.addOption(MenuOption, {
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

options.addOption(MenuOption, {
	text: function() { return $"Sound: {global.settings.get("sound") ? "On" : "Off"}"; },
	action: function() { global.settings.toggle("sound"); }
});

options.addOption(MenuOption, {
	text: function() { return $"Music: {global.settings.get("music") ? "On" : "Off"}"; },
	action: function() { global.settings.toggle("music"); }
});

options.addOption(MenuOption, {
	text: function() { return $"Fullscreen: {global.settings.get("fullscreen") ? "On" : "Off"}" },
	action: function() {
		global.settings.toggle("fullscreen");
		window_set_fullscreen(global.settings.get("fullscreen"));
	}
});

options.addOption(MenuOption, {
	text: function() { return $"FPS Counter: {global.settings.get("showFps") ? "On" : "Off"}"; },
	action: function() { global.settings.toggle("showFps"); }
});

options.addOption(MenuOptionSwitch, {
	text: "Delete Save",
	target: "deleteSaveConfirm"
});

options.addOption(MenuOptionSwitch, {
	text: "Back",
	target: "main"
});

menus.add("options", options);

#endregion

#region Menu - play

var play = new Menu(id, {
	title: "Play"
});

play.addOption(MenuOption, {
	text: "Load Save"
});

play.addOption(MenuOptionSwitch, {
	text: "New Game",
	target: "tutorial"
});

play.addOption(MenuOptionSwitch, {
	text: "Back",
	target: "main"
});

menus.add("play", play);

#endregion 

#region Menu - tutorial

var tutorial = new Menu(id, {
	title: "Play Tutorial?"
});

tutorial.addOption(MenuOption, {
	text: "Yes",
	action: function() {
		room_goto(rm_tutorial);
	}
});

tutorial.addOption(MenuOption, {
	text: "No",
	action: function() {
		room_goto(rm_intro)
	}
});

tutorial.addOption(MenuOptionSwitch, {
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

deleteSaveConfirm.addOption(MenuOption, {
	text: "Yes"
});

deleteSaveConfirm.addOption(MenuOption, {
	text: "No"
});

deleteSaveConfirm.addOption(MenuOptionSwitch, {
	text: "Back",
	target: "options"
})

menus.add("deleteSaveConfirm", deleteSaveConfirm);

#endregion
