
event_inherited();

price = 750;

var main = new Menu(id, {
	title: "Police Chief",
	additional: function() {
		if (global.faction != FactionType.Republic) { return; }
		draw_set_font(fnt_hud);
		draw_set_colour(c_police);
		draw_text(room_width/2, room_height*.75, "ABILITY: [SEARCH]\nAllows you to search civillians and arrest them if they are\nholding illegal cargo. Allows you to arrest thieves.\nPASSIVE: [AUTHORITY]\nThieves will not attempt to rob you.");
	}
});

main.addOption(MenuLine, {
	text: function() { return $"Perform Thief Raid (${global.thiefspawn ? price : 0 })"}
});

main.addOption(MenuLine, {
	text: function() { return global.faction == FactionType.Republic ? "Leave Faction" : "Inquire" },
	action: method({ obj: id }, function() {
		if (global.Faction == FactionType.Republic) {
			obj.switchTo("leave");
		} else {
			obj.switchTo("inquire");
		}
	})
});

main.addOption(MenuLineClose, {
	text: "Back"
})

var inquire = new Menu(id, { });
var leave = new Menu(id, { });

menus.add("main", main);
menus.add("inquire", inquire);
menus.add("leave", leave);
