
function getFaction() {
	if (global.faction == undefined) { return undefined; }
	return global.factions.get(global.faction);
}
