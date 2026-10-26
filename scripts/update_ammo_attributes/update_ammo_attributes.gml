function update_ammo_attributes()
{
	ammo_loaded_total = weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_loaded_type];
	ammo_owned_total = weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_total_type];
}