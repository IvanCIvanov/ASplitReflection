if (instance_exists(obj_floorBreakable)) {
    var count = instance_number(obj_floorBreakable);
    var random_index = irandom(count - 1);
    var placement = instance_find(obj_floorBreakable, random_index);

    // Create the heart slightly above the floor
    instance_create_layer(placement.x, placement.y - 32, "Instances", obj_heartPickup);
    

}