// Spawns a shard and estroys itself once animation ends
instance_create_layer(x, y, "Instances", obj_shard);
instance_destroy();