/// @description hint()
function hint() {
	h[0] = "Legal cargo cannot be delivered while illegal cargo is\nin your possession.";
	h[1] = "Killing civillians will add a significant amount of\ncurrency to your fine.";
	h[2] = "Killing police will add a significant amount of\ncurrency to your fine.";
	h[3] = "You can lose the police by leaving the system. However,\nnot if you have recently killed civillians or police.";
	h[4] = "You can repair your shields when you are docked at your\nhome.";
	h[5] = "You can remove all fines from murder charges by paying\nthe Mob Boss in Bask Major.";
	h[6] = "Funds deposited to your savings account cannot be\nconfiscated through fines or robberies.";
	h[7] = "Joining a faction will make specialty cargo visible.\nSpecialty cargo is one of the easiest ways to gain money fast.";
	var selection = irandom_range(0, array_length(h) - 1);

	return h[selection];
}
