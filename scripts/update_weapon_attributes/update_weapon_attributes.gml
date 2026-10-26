function update_weapon_attributes()
{
	fire_rate = weapon_index[owned_weapons[current_weapon],weapon_stat.w_fire_rate];
	mag_capacity = weapon_index[owned_weapons[current_weapon],weapon_stat.w_mag_capacity];
	bullet_amount = weapon_index[owned_weapons[current_weapon],weapon_stat.w_bullet_per_shot];
	bullet_range = weapon_index[owned_weapons[current_weapon],weapon_stat.w_bullet_range];
	bullet_speed = weapon_index[owned_weapons[current_weapon],weapon_stat.w_bullet_speed];
	damage_per_shot = weapon_index[owned_weapons[current_weapon],weapon_stat.w_damage_per_shot];
	spread_min_amount = weapon_index[owned_weapons[current_weapon],weapon_stat.w_minimum_spread_amount];
	spread_max_amount = weapon_index[owned_weapons[current_weapon],weapon_stat.w_maximim_spread_amount];
	weapon_name = weapon_index[owned_weapons[current_weapon],weapon_stat.w_weapon_name];
	ammo_loaded = weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_loaded];
	walk_sprite = weapon_index[owned_weapons[current_weapon],weapon_stat.w_walk_sprite];
	fire_sprite = weapon_index[owned_weapons[current_weapon],weapon_stat.w_attack_sprite];
	reload_sprite = weapon_index[owned_weapons[current_weapon],weapon_stat.w_reload_sprite];
	head_explody = weapon_index[owned_weapons[current_weapon],weapon_stat.w_gib];
	head_explode_dist = weapon_index[owned_weapons[current_weapon],weapon_stat.w_dist_to_gib];
	attack_dist = weapon_index[owned_weapons[current_weapon],weapon_stat.w_dist_to_attack];
	gun_sound = weapon_index[owned_weapons[current_weapon],weapon_stat.w_attack_sound];
	hitbox_type = weapon_index[owned_weapons[current_weapon],weapon_stat.w_bullet_type];
	weapon_noise = weapon_index[owned_weapons[current_weapon],weapon_stat.w_noise_level];
	shell_delay = weapon_index[owned_weapons[current_weapon],weapon_stat.w_shell_eject_delay];
	w_type = weapon_index[owned_weapons[current_weapon],weapon_stat.w_weapon_type];
	pickup_sprite = weapon_index[owned_weapons[current_weapon],weapon_stat.w_weapon_pickup_sprite];
	update_ammo_attributes();
}