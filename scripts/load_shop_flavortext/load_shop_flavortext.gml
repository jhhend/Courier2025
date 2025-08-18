/// @description load_shop_flavortext();
function load_shop_flavortext() {

	ftext[0] = "Increases your shields from 0 to 1."; //weapons 1
	ftext[1] = "Increases your shields from 1 to 2.\n(Requires Shields 1)"; //weapons 2
	ftext[2] = "Increases your shields from 2 to 3.\n(Requires Shields 2)"; //weapons 3
	ftext[3] = "Increases your main weapon accuracy."; //shields 1
	ftext[4] = "Increases your main weapon accuracy.\n(Requires Weapons 1)"; //shields 2
	ftext[5] = "Increases your main weapon accuracy.\n(Requires Weapons 2)"; //shields 3
	ftext[6] = "Adds an arrow pointing to the drop station."; //systems 1
	ftext[7] = "Adds an arrow pointing to the nearest cargo.\nA blue arrow indicates legal cargo, while\na red arrow indicates contrabnad.\n(Requires Systems 1)"; //systems 2
	ftext[8] = "Adds an arrow pointing to the criminal.\n(Requires Systems 2)"; //systems 3
	ftext[9] = choose (
	"",
	"I've heard they're recruiting for the police\nforce in Majorin. If you're looking for any\nextra work, that might be the place to look.\nThat is, if you're interested in that sort of\ncareer. I know lots of folks don't like the\nRepublic sticking their nose in systems where\nthey aren't welcome. Me on the other hand? I\ndon't mind them too much. They help to\nprotect my shipments and in exchange I give\nthem a portion of my profits. It's either I\npay them, or I pay the Bask Thieves for\nprotection. I don't wanna be the type of\nbusiness that associates with thieves.",
	"The thieves in the Bask systems are getting\nout of control.\nMy last two shipments were stolen right out\nfrom under me!\nHow I wish I could give them a piece of my\nmind...",
	"Heard anything about the crazy cultists in\nKorda?\nIt's become a dangerous area because of them.\nIt used to be a real nice place to be...\nBut now?\nFar too hostile."
	)//back
}
