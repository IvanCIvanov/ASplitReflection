// Inherit parent step logic
event_inherited();

// --- Elevator Lock System ---

// Persistent variable
var elevator = instance_place(x, y + 1, obj_elevatorPlatform);

if (elevator != noone && elevator.can_move) {
    // Lock player to elevator
    y += elevator.platform_vsp;

    // Freeze player vertical movement only if standing on elevator
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




