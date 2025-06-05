damage_mult = 5;
destroy_hitbox = function()
{
	instance_destroy(self);
}

knoife_hitbox_destroy = time_source_create(time_source_global,.3,time_source_units_seconds,destroy_hitbox,[],1,time_source_expire_after);
time_source_start(knoife_hitbox_destroy);
array_push(objPlayer.time_source_list,knoife_hitbox_destroy);
