// Choose a random direction to move in (left/right)
hsp = choose(-move_speed, move_speed);

// Add to mirror's total shard count
with (obj_mirror) {
	total_shards++;
}