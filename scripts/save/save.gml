/// @description save()
function save() {

	if (file_exists("save.sav")) {
	    file_delete("save.sav");
	}

	ini_open("save.sav");

	/*ENCODE-----------------------------------------------------------------------------------------*/
	//player stats
	var s_money = base64_encode(string(global.state.money));
	var s_savings = base64_encode(string(global.state.savings))
	var s_ticket = base64_encode(string(global.state.ticket));
	var s_hud = base64_encode(string(global.hud));
	var s_shd = base64_encode(string(global.shd));
	var s_wep = base64_encode(string(global.wep));
	var s_maxshields = base64_encode(string(global.maxshields));
	var s_shields = base64_encode(string(global.shields));
	var s_faction = base64_encode(string(global.faction));

	//casino
	var s_pot = base64_encode(string(global.pot));
	var s_banned = base64_encode(string(global.banned));
	var s_bettype = base64_encode(string(global.bettype));

	//cosmetic
	var s_color = base64_encode(string(global.color));
	var s_lasercolor = base64_encode(string(global.color));

	//police
	var s_fine = base64_encode(string(global.fine));
	var s_murder = base64_encode(string(global.murder));

	//technical
	var s_xprev = base64_encode(string(global.xprev));
	var s_yprev = base64_encode(string(global.yprev));
	var s_prevroom = base64_encode(string(global.prevroom));
	var s_thiefspawn = base64_encode(string(global.thiefspawn));
	var s_legaltotal = base64_encode(string(global.legaltotal));
	var s_illegaltotal = base64_encode(string(global.illegaltotal));
	var s_factiontotal = base64_encode(string(global.factiontotal));
	var s_kills = base64_encode(string(global.kills));
	var s_betray = base64_encode(string(global.state.betray));
	var s_blessing = base64_encode(string(global.blessing));
	var s_cultpower = base64_encode(string(global.cultpower));
	var s_calm = base64_encode(string(global.calm));
	var s_tdir = base64_encode(string(global.tdir));
	var s_questphase = base64_encode(string(global.questphase));
	var s_podspawn = base64_encode(string(global.podspawn));

	//sandbox
	var s_endcolor = base64_encode(string(global.endcolor));
	var s_endamount = base64_encode(string(global.endamount));
	var s_endspawn = base64_encode(string(global.endspawn));

	/*WRITE------------------------------------------------------------------------------------------*/
	//player stats
	ini_write_string("PLAYERSTATS", "MONEY", s_money);
	ini_write_string("PLAYERSTATS", "SAVINGS", s_savings);
	ini_write_string("PLAYERSTATS", "HUDLEVEL", s_hud);
	ini_write_string("PLAYERSTATS", "TICKET", s_ticket);
	ini_write_string("PLAYERSTATS", "SHIELDLEVEL", s_shd);
	ini_write_string("PLAYERSTATS", "WEAPONLEVEL", s_wep);
	ini_write_string("PLAYERSTATS", "MAXSHIELDS", s_maxshields);
	ini_write_string("PLAYERSTATS", "SHIELDS", s_shields);
	ini_write_string("PLAYERSTATS", "FACTION", s_faction);

	//casino
	ini_write_string("CASNIO", "POT", s_pot);
	ini_write_string("CASINO", "BANNED", s_banned);
	ini_write_string("CASINO", "BETTYPE", s_bettype);

	//cosmetic
	ini_write_string("COSMETIC", "TRIMCOLOR", s_color);
	ini_write_string("COSMETIC", "LASERCOLOR", s_lasercolor)

	//police
	ini_write_string("POLICE", "FINE", s_fine);
	ini_write_string("POLICE", "MURDER", s_murder);

	//technical
	ini_write_string("TECHNICAL", "XPREV", s_xprev);
	ini_write_string("TECHNICAL", "YPREV", s_yprev);
	ini_write_string("TECHNICAL", "PREVROOM", s_prevroom);
	ini_write_string("TECHNICAL", "THIEFSPAWN", s_thiefspawn);
	ini_write_string("TECHNICAL", "LEGALTOTAL", s_legaltotal);
	ini_write_string("TECHNICAL", "ILLEGALTOTAL", s_illegaltotal);
	ini_write_string("TECHNICAL", "FACTIONTOTAL", s_factiontotal);
	ini_write_string("TECHNICAL", "KILLS", s_kills);
	ini_write_string("TECHNICAL", "BETRAY", s_betray);
	ini_write_string("TECHNICAL", "BLESSING", s_blessing);
	ini_write_string("TECHNICAL", "CULTPOWER", s_cultpower);
	ini_write_string("TECHNICAL", "HIVECALM", s_calm);
	ini_write_string("TECHNICAL", "TRAVELDIRECTION", s_tdir);
	ini_write_string("TECHNICAL", "QUESTPHASE", s_questphase);
	ini_write_string("TECHNICAL", "PODSPAWN", s_podspawn)

	//sandbox
	ini_write_string("SANDBOX", "STARCOLOR", s_endcolor);
	ini_write_string("SANDBOX", "STARDENSITY", s_endamount);
	ini_write_string("SANDBOX", "ASTEROID", s_endspawn)

	save_hold();

	ini_close();



}
