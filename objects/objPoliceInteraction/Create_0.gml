
event_inherited();

price = 750;

text = [
	new MenuLine({
		line: function() {
			return $"Perform Thief Raid (${global.thiefspawn ? price : 0})"
		}
	}),
	new MenuLine({
		line: function() {
			return global.faction == FactionType.Republic ? "Leave Faction" : "Inquire"
		}
	}),
	new MenuLine({
		line: "Back"
	})
]
