// Spawns a shard and destroys itself once animation ends
instance_create_layer(x, y + shard_yoffset, "Instances", obj_shard);
instance_destroy();