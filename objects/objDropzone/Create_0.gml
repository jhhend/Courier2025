
radius = 256;
type = CargoType.Normal;
destination = room;
sealed = false;
allowIllegal = false;

deliveryCheck = function() {
	
	// Ensure that delivery can be accepted
	if (sealed) { return; }
	
	// Check that in range
	var inRange = collision_circle(x, y, radius, obj_player, true, false);
	if (!inRange) { return; }
	
	// Check for key press
	if (!keyboard_check_pressed(vk_enter)) { return; }	
	
	// Check for illegal cargo
	if (!allowIllegal && global.cargo.hasIllegal()) {
		sealed = true;
		
		repeat (3) {
			spawn_police();
		}
		
		// Betrayal! >:)
		if (global.faction == FactionType.Republic) {
			global.faction = -1;
			global.state.betray = true;
		}
		
		return;
	}
	
	// Otherwise, deliver any normal cargo that is for this location
	global.cargo.deliver(destination, type);
}
