
global.state = {
	
	// Ship systems
	hud: 0,
	shd: 0,
	wep: 0,
	
	// Amount of money the player has on hand
	money: 0,
	
	// Amount of money in savings
	savings: 0,
	
	// Whether the player can travel to paradise
	ticket: false, 
	
	// Faction
	faction: -1,
	
	// Whether the player has joined and betrayed a faction
	// This is prereq to join the cult faction
	betray: false,
	
	// delivery counts
	legalTotal: 0,
	illegalTotal: 0,
	factionTotal: 0
}

global.casino = {
	pot: 3500,
	banned: false,
	betType: 16
}

// Factions
global.faction = -1;
global.factions = new Map();
global.factions.set(FactionType.Republic, createFaction(FactionType.Republic));
global.factions.set(FactionType.Mafia, createFaction(FactionType.Mafia));
global.factions.set(FactionType.Alien, createFaction(FactionType.Alien));
global.factions.set(FactionType.Cult, createFaction(FactionType.Cult));

// Settings
global.settings = new Settings();

