// Spawns a shard and destroys itself once animation ends
instance_create_layer(x, y + 10, "Instances", obj_shard);
instance_destroy();