if (instance_exists(obj_floorBreakable)) {
    var count = instance_number(obj_floorBreakable);
    var random_index = irandom(count - 1);       // random floor index
    var placement = instance_find(obj_floorBreakable, random_index);

    // Safety check
    if (placement != noone) {
        instance_create_layer(placement.x, placement.y - 120, "Instances", obj_heartPickup);
    }

  
}
