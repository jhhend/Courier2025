
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
	faction: -1
	
	// Whether the player has joined and betrayed a faction
	// This is prereq to join the cult faction
	betray: false,
	
	// delivery counts
	legalTotal: 0,
	illegalTotal: 0,
	factionTotal: 0,
	
	// casino
	pot: 3500,
	casnioBanned: false,
	betType: 16
}

// Settings
global.settings = new Settings();

