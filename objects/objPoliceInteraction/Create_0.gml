
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
	text: method({ price }, function() { return $"Perform Thief Raid (${global.thiefspawn ? price : 0 })"}),
	subtitles: function() {
		if (global.thiefspawn) {
			return [
				"\"Have any information about the thieves' whereabouts?\"",
				"Thieves will not spawn the next time a Bask system is visited."
			];
		}
		
		return [
			$"No need to worry about the thieves for now, {global.faction == FactionType.Republic ? "agent" : "citizen"}.",
			"Ability unavailable: Raid already conducted!"
		];
	}
});

var inquireArgs = {
	text: "Inquire",
	target: "inquire",
	subtitles: function() {	
		
		var republic = global.factions.get(FactionType.Republic);
		
		// Part of another faction
		if (global.faction != -1) {
			return [
				"\"Complete loyalty to the force is required.\"",
				"Unable to join when part of another faction"
			];
		}
		
		// Have not fulfilled criteria
		if (global.state.legalTotal < 10) {
			return [
				"\"We have a thorough vetting process within the department.\"",
				republic.getJoinRequirementText()
			];	
		}
		
		return [
			"\"I believe we have a position we could offer you.\"",
			"Able to join faction!"
		];
		
	},
	enabled: function() {
		return true;
		var republic = global.factions.get(FactionType.Republic);
		return republic.canJoin();
	}
};

var leaveArgs = {
	text: "Leave Faction",
	target: "leave",
	subtitles: [ "\"I hope you reconsider your decision.\"" ]
};

/*
main.addOption(MenuLineSwitch, {
	text: function() { return global.faction == FactionType.Republic ? "Leave Faction" : "Inquire"; },
	target: function() { return global.faction == FactionType.Republic ? "leave" : "inquire"; }
});
*/


main.addOption(MenuLineSwitch, global.faction == FactionType.Republic ? leaveArgs : inquireArgs);

main.addOption(MenuLineClose, {
	text: "Back"
});

var inquire = new Menu(id, {
	title: "Join Faction?"
});
var leave = new Menu(id, {
	title: "Leave Faction?"
});

menus.add("main", main);
menus.add("inquire", inquire);
menus.add("leave", leave);
