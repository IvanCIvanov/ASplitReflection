// Inherit the parent event
event_inherited();

// Apply velocity
x += hsp;
y += vsp;


// Cheats

if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("N"))) {
	room_goto_next();
}