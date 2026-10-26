function create_primary_stored_weapon()
{
	if (current_primary != undefined)
	{
		grant_weapons(owned_weapons,current_primary);
		if !variable_instance_exists(self,"primary_stored") then primary_stored = instance_create_layer(x,y,"Torso",objStoredWeapon);
		primary_stored.x_len = -5;
		primary_stored.y_len = -5;
		primary_stored.weapon_id = current_primary;
		primary_stored.weapon_angle = 66;
		primary_stored.weapon_dir = 0;
		primary_stored.image_xscale = 1;
		primary_stored.image_yscale = 1;
		primary_stored.owner = self;
	}
}