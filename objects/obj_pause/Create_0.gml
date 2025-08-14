text[0] = "Resume";
text[1] = "Quit";

quest[0] = "Purchase Ticket to Paradise";
quest[1] = "Defeat the Gemkeeper";
quest[2] = "Collect the Star Gem";
quest[3] = "Socket the Star Gem";
quest[4] = ""

pause = false;
placement = 0;

staramount = 500;
for (var j = 0; j <= staramount; j++) {
    bkxcoord[j] = random_range(__view_get( e__VW.XView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ));
    bkycoord[j] = random_range(__view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ));
    bkscale[j] = random_range(.5, .9);
    bkcolor[j] = choose_colors(-1);
    bkalpha[j] = random_range(.25, .75);
    bkangle[j] = random(360);
}

