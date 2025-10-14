// Mirror is repaired once all shards have been collected
if (global.shards == total_shards) {
	is_repaired = true;
	sprite_index = spr_mirrorFixed;
}