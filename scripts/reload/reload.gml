function reload()
{
	var ammo_remainder = mag_capacity - weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_loaded_type];
	
	if mag_capacity > weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_total_type] && 
	weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_total_type] + weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_loaded_type]
	< mag_capacity
	{
		weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_loaded_type] += weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_total_type]
	}
	else
	{
		weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_loaded_type] += ammo_remainder;
		weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_total_type] -= ammo_remainder;
	}
	
	update_ammo_attributes();
	
	reloading = false;
}