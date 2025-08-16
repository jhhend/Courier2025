/// @description load()
function load() {

	if file_exists("save.sav") {
	    ini_open("save.sav")
	    //player stats
	    var l_money = ini_read_string("PLAYERSTATS", "MONEY", 0);  
	    var l_savings = ini_read_string("PLAYERSTATS", "SAVINGS", 0);
	    var l_ticket = ini_read_string("PLAYERSTATS", "TICKET", false);
	    var l_hud = ini_read_string("PLAYERSTATS", "HUDLEVEL", 0);
	    var l_shd = ini_read_string("PLAYERSTATS", "SHIELDLEVEL", 0);
	    var l_wep = ini_read_string("PLAYERSTATS", "WEAPONLEVEL", 0);
	    var l_maxshields = ini_read_string("PLAYERSTATS", "MAXSHIELDS", 0);
	    var l_shields = ini_read_string("PLAYERSTATS", "SHIELDS", 0);
	    var l_faction = ini_read_string("PLAYERSTATS", "FACTION", -1);
    
	    //casino
	    var l_pot = ini_read_string("CASINO", "POT", 3500);
	    var l_banned = ini_read_string("CASINO", "BANNED", false);
	    var l_bettype = ini_read_string("CASINO", "BETTYPE", 0);
    
	    //cosmetic
	    var l_color = ini_read_string("COSMETIC", "TRIMCOLOR", c_white);
	    var l_lasercolor = ini_read_string("COSMETIC", "LASERCOLOR", c_red);
    
	    //police
	    var l_fine = ini_read_string("POLICE", "FINE", 0);
	    var l_murder = ini_read_string("POLICE", "MURDER", 0);
    
	    //technical
	    var l_xprev = ini_read_string("TECHNICAL", "XPREV", -1);
	    var l_yprev = ini_read_string("TECHNICAL", "YPREV", -1);
	    var l_prevroom = ini_read_string("TECHNICAL", "PREVROOM", rm_worldmap);
	    var l_thiefspawn = ini_read_string("TECHNICAL", "THIEFSPAWN", true);
	    var l_legaltotal = ini_read_string("TECHNICAL", "LEGALTOTAL", 0);
	    var l_illegaltotal = ini_read_string("TECHNICAL", "ILLEGALTOTAL", 0);
	    var l_factiontotal = ini_read_string("TECHNICAL", "FACTIONTOTAL", 0);
	    var l_kills = ini_read_string("TECHNICAL", "KILLS", 0);
	    var l_betray = ini_read_string("TECHNICAL", "BETRAY", false);
	    var l_blessing = ini_read_string("TECHNCIAL", "BLESSING", false);
	    var l_cultpower = ini_read_string("TECHNICAL", "CULTPOWER", 0);
	    var l_calm = ini_read_string("TECHNICAL", "HIVECALM", false);
	    var l_tdir = ini_read_string("TECHNICAL", "TRAVELDIRECTION", TO);
	    var l_questphase = ini_read_string("TECHNICAL", "QUESTPHASE", 0);
	    var l_podspawn = ini_read_string("TECHNICAL", "PODSPAWN", true);
    
	    var l_endcolor = ini_read_string("SANDBOX", "STARCOLOR", c_white);
	    var l_endamount = ini_read_string("SANDBOX", "STARDENSITY", SOME);
	    var l_endspawn = ini_read_string("SANDBOX", "ASTEROID", true);
    
	    //global.blessing = base64_decode(l_blessing);
    
	    global.money = real(base64_decode(l_money));
	    global.savings = real(base64_decode(l_savings));
	    global.state.ticket = real(base64_decode(l_ticket));
	    global.hud = real(base64_decode(l_hud));
	    global.shd = real(base64_decode(l_shd));
	    global.wep = real(base64_decode(l_wep));
	    global.maxshields = real(base64_decode(l_maxshields));
	    global.shields = real(base64_decode(l_shields));
	    global.faction = real(base64_decode(l_faction));
    
	    global.pot = real(base64_decode(l_pot));
	    global.banned = real(base64_decode(l_banned));
	    global.bettype = real(base64_decode(l_bettype));
    
	    global.color = real(base64_decode(l_color));
	    global.lasercolor = real(base64_decode(l_lasercolor));
    
	    global.fine = real(base64_decode(l_fine));
	    global.murder = real(base64_decode(l_murder));
    
	    global.xprev = (room_width*(1/3)+32) //load home position
	    global.yprev = (room_height*(2/3)+64) //load home position
	    global.prevroom = rm_home;  
	    global.thiefspawn = real(base64_decode(l_thiefspawn));
	    global.illegaltotal = real(base64_decode(l_illegaltotal));
	    global.factiontotal = real(base64_decode(l_factiontotal));
	    global.kills = real(base64_decode(l_kills));
	    global.state.betray = real(base64_decode(l_betray));
	    global.blessing = real(base64_decode(l_blessing));
	    global.cultpower = real(base64_decode(l_cultpower));
	    global.calm = real(base64_decode(l_calm));
	    global.tdir = real(base64_decode(l_tdir));
	    global.questphase = real(base64_decode(l_questphase));
	    global.podspawn = real(base64_decode(l_podspawn));
    
	    global.endcolor = l_endcolor;
	    global.endamount = l_endamount;
	    global.endspawn = l_endspawn;
    
	    load_hold();
    
	    ini_close();
	}



}
