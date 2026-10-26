function create_secondary_stored_weapon()
{
	if (current_secondary != undefined)
	{
		grant_weapons(owned_weapons,current_secondary);
		if !variable_instance_exists(self,"secondary_stored") then secondary_stored = instance_create_layer(x,y,"Torso",objStoredWeapon);
		secondary_stored.x_len = -4;
		secondary_stored.y_len = -4;
		secondary_stored.weapon_id = current_secondary;
		secondary_stored.weapon_angle = 180;
		secondary_stored.weapon_dir = 90;
		secondary_stored.image_xscale = 1;
		secondary_stored.image_yscale = 1;
		secondary_stored.owner = self;
	}
}