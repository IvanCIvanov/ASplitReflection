// Inherit parent step logic
event_inherited();

// --- Elevator Lock System ---

// Make sure we have a persistent variable
// (in Create Event of player, include: locked_to_elevator = false;)
var elevator = instance_place(x, y + 1, obj_elevatorPlatform);

if (elevator != noone && elevator.can_move) {
    // Lock player to elevator
    y += elevator.platform_vsp;

    // Optionally, freeze player input only if standing on elevator
    if (place_meeting(x, y + 1, elevator)) {
       
        vsp = 0;
        locked_to_elevator = true;
		sprite_index = spr_playerIdle
    }
} else {
    locked_to_elevator = false;
}

// Only apply movement when NOT locked
if (!locked_to_elevator) {
    x += hsp;
    y += vsp;
}




