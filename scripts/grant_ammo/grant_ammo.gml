function grant_ammo(ammo_amount)
{
	weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_total_type] += ammo_amount;
}