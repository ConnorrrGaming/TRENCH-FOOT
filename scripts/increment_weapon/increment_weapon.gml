function increment_weapon()
{
	if current_weapon == weapon_length-1 
	{	// if the current weapon is at the maximum weapons length, and the scroll wheel goes down...
		current_weapon = 0;					// revert to the first weapon, preventing any errors or crashes
	}
	else
	{									// otherwise...
		current_weapon++; 
	}					// increment the current weapon
	primary_stored.image_alpha = owned_weapons[current_weapon] != current_primary;
	secondary_stored.image_alpha = owned_weapons[current_weapon] != current_secondary;
}