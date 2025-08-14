/// @description load_shop_flavortext();
function load_shop_flavortext() {

	ftext[0] = "Increases your shields from 0 to 1."; //weapons 1
	ftext[1] = @"Increases your shields from 1 to 2.
	(Requires Shields 1)"; //weapons 2
	ftext[2] = @"Increases your shields from 2 to 3.
	(Requires Shields 2)"; //weapons 3
	ftext[3] = "Increases your main weapon accuracy."; //shields 1
	ftext[4] = @"Increases your main weapon accuracy.
	(Requires Weapons 1)"; //shields 2
	ftext[5] = @"Increases your main weapon accuracy.
	(Requires Weapons 2)"; //shields 3
	ftext[6] = "Adds an arrow pointing to the drop station."; //systems 1
	ftext[7] = @"Adds an arrow pointing to the nearest cargo.
	A blue arrow indicates legal cargo, while
	a red arrow indicates contrabnad.
	(Requires Systems 1)"; //systems 2
	ftext[8] = @"Adds an arrow pointing to the criminal.
	(Requires Systems 2)"; //systems 3
	ftext[9] = choose (
	"",

	@"I've heard they're recruiting for the police
	force in Majorin. If you're looking for any
	extra work, that might be the place to look.
	That is, if you're interested in that sort of
	career. I know lots of folks don't like the
	Republic sticking their nose in systems where
	they aren't welcome. Me on the other hand? I
	don't mind them too much. They help to
	protect my shipments and in exchange I give
	them a portion of my profits. It's either I
	pay them, or I pay the Bask Thieves for
	protection. I don't wanna be the type of
	business that associates with thieves.
	",

	@"The thieves in the Bask systems are getting
	out of control.
	My last two shipments were stolen right out
	from under me!
	How I wish I could give them a piece of my
	mind...",

	@"Heard anything about the crazy cultists in
	Korda?
	It's become a dangerous area because of them.
	It used to be a real nice place to be...
	But now?
	Far too hostile."

	)//back



}
