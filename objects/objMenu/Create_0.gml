
title = "Title";

menus = new Map();

text = [ ];
current = "main";

// Build out a test menu set so we don't have to 
/*
var main = new Menu(id, {
	title: "Main Menu"
});
main.addOption(MenuLine, {
	text: "Option", 
	subtitles: [ "By viewing this option", "I am displaying these subtitles" ],
	onAction: function() {
		audio_play_sound(snd_laser, 1, false);		
	}
});
main.addOption(MenuLineSwitch, {
	text: "Submenu",
	subtitles: "This is a test",
	target: "sub"
});
main.addOption(MenuLineClose, {
	text: "Exit",
	subtitles: [ "Bye bye", "See you later" ]
});
menus.add("main", main);

var sub = new Menu(id, {
	title: "Sub Menu",
	showMoney: true
});
sub.addOption(MenuLineSwitch, {
	text: "Return",
	subtitles: [ "We made it to the submenu!" ],
	target: "main"
});
menus.add("sub", sub);
*/

// Stars
stars = [ ];
starAmount = 500;
repeat (starAmount) {
	array_push(stars, {
		x: random_range(0,  view_wport[0]/2),
		y: random_range(0,  view_hport[0]/2),
		scale: random_range(.5, .9),
		color: choose_colors(0),
		alpha: random_range(.25, .75),
		angle: random(360)
	});
}

switchTo = function(key) {
	current = key;
}

getCurrentMenu = function() {
	var currentMenu = menus.get(current);
	return currentMenu;
}

close = function() {
	instance_destroy();
	instance_activate_all();
	obj_view.target = obj_player;
	obj_view.jumpToTarget();
}

instance_deactivate_all(true);
instance_activate_object(obj_view);
