if other.dead == false && self.speed <= speed_pickup_cap
{
	if !array_contains(other.owned_weapons,weapon_id)
	{
		with other grant_weapons(owned_weapons,other.weapon_id);
		send_to_hud_queue("You have picked up a "+string(other.weapon_index[weapon_id,weapon_stat.w_weapon_name]));
	}

	other.weapon_index[weapon_id,weapon_stat.w_ammo_total_type] += ammo;
	with(other)
	{
		update_weapon_attributes();
		update_ammo_attributes();
	}
	audio_play_sound(pickup_sound,0,false);
	instance_destroy(self);
	send_to_hud_queue("You have picked up "+string(ammo)+ " " +string(other.weapon_index[weapon_id,weapon_stat.w_weapon_name]) +" rounds");
}