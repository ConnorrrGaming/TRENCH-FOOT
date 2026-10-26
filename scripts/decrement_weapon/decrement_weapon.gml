function decrement_weapon()
{
	if current_weapon == 0 
	{				// if the current weapon is at 0, and the scroll wheel goes up...
		current_weapon = weapon_length-1;	// revert back to the last weapon, preventing any errors or crashes
	}
	else
	{									// otherwise...
		current_weapon--; 
	}					// decrement the current weapon
	
	primary_stored.image_alpha = owned_weapons[current_weapon] != current_primary;
	secondary_stored.image_alpha = owned_weapons[current_weapon] != current_secondary;
}