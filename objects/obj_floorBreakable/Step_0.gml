// Check for collisions
var top_left = instance_place(bbox_left - 1, bbox_top - 1, obj_Player);
var top_right = instance_place(bbox_right + 1, bbox_top - 1, obj_Player);
var bottom_right = instance_place(bbox_right + 1, bbox_bottom + 1, obj_Player);
var bottom_left = instance_place(bbox_left - 1, bbox_bottom + 1, obj_Player);

// Deactivate platform upon contact w/ player
if (active && (top_left || top_right || bottom_right || bottom_left)) {
	alarm[0] = shatter_time;
	active = false;
}