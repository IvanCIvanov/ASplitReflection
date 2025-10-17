// Draw player lives
var draw_x, draw_y = 16;

for (var i = 0; i < global.lives; i++) {
	draw_x = 16 + 144 * i;
	draw_sprite(spr_heart, 0, draw_x, draw_y);
}


// Draw shard count
var shard_scale = 3; // 🔥 scale up the sprite 2x size
var shard_sprite = spr_shard;
var shard_y = 272; // below the hearts

// Draw one shard for each collected shard
for (var i = 0; i < global.shards; i++) {
	var shard_x = 88 +128*i; 
	draw_sprite_ext(
	    shard_sprite,     // sprite
	    0,                // subimage
	    shard_x,          // x
	    shard_y,          // y
	    shard_scale,      // xscale
	    shard_scale,      // yscale
	    0,                // rotation
	    c_white,          // color
	    1                 // alpha
	);
}
