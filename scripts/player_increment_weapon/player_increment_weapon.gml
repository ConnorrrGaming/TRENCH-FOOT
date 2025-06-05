function player_increment_weapon()
{
	if current_weapon == weapon_length-1 
	{	// if the current weapon is at the maximum weapons length, and the scroll wheel goes down...
		current_weapon = 0;					// revert to the first weapon, preventing any errors or crashes
	}
	else
	{									// otherwise...
		current_weapon++; 
	}					// increment the current weapon
	
	show_debug_message("Weapon selected: "+string(weapon[current_weapon][7]));		// output which weapon is currently selected in the Output window
}