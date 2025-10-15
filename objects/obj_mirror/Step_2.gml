// Mirror is repaired once all shards have been collected
if (global.shards == global.shards_total) {
	is_repaired = true;
	sprite_index = spr_mirrorFixed;
}