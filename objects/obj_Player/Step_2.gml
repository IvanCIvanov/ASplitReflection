// Inherit the parent event
event_inherited();

// Sprite transitions
switch (sprite_index) {
	case spr_playerRun:
		if (hsp == 0) {
			// Transition to idle sprite when not moving horizontally
			sprite_index = spr_playerIdle;
		}
		
		if (vsp > 1) {
			// Transition to falling sprite when moving downward
			sprite_index = spr_playerFall;
		}
		break;
		
	case spr_playerJump:
		if (vsp >= 0) {
			// Transition to falling sprite when starting to move downward
			sprite_index = spr_playerFall;
		}
		break;
}