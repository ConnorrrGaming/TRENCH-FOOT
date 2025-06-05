function player_decrement_weapon()
{
	if current_weapon == 0 
	{				// if the current weapon is at 0, and the scroll wheel goes up...
		current_weapon = weapon_length-1;	// revert back to the last weapon, preventing any errors or crashes
	}
	else
	{									// otherwise...
		current_weapon--; 
	}					// decrement the current weapon
	
	show_debug_message("Weapon selected: "+string(weapon[current_weapon][7]))		// output which weapon is currently selected in the Output window
}