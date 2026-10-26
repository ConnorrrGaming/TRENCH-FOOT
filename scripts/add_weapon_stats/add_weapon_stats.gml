function add_weapon_stats(ID,
fire_rate,
mag_capacity,
max_ammo,
bullet_per_shot,
bullet_range,
bullet_speed,
damage_per_shot,
minimum_spread,
maximum_spread,
weapon_name,
walk_sprite,
attack_sprite,
reload_sprite,
gib,
dist_to_gib,
dist_to_attack,
attack_sound,
bullet_type,
noise_level,
shell_eject_delay,
ammo_loaded_type,
ammo_total_type,
weapon_pickup_sprite,
weapon_type)
{
	weapon_index[ID, weapon_stat.w_fire_rate] = fire_rate;
	weapon_index[ID, weapon_stat.w_mag_capacity] = mag_capacity;
	weapon_index[ID, weapon_stat.w_max_ammo] = max_ammo;
	weapon_index[ID, weapon_stat.w_bullet_per_shot] = bullet_per_shot;
	weapon_index[ID, weapon_stat.w_bullet_range] = bullet_range;
	weapon_index[ID, weapon_stat.w_bullet_speed] = bullet_speed;
	weapon_index[ID, weapon_stat.w_damage_per_shot] = damage_per_shot;
	weapon_index[ID, weapon_stat.w_minimum_spread_amount] = minimum_spread;
	weapon_index[ID, weapon_stat.w_maximim_spread_amount] = maximum_spread;
	weapon_index[ID, weapon_stat.w_weapon_name] = weapon_name;
	weapon_index[ID, weapon_stat.w_walk_sprite] = walk_sprite;
	weapon_index[ID, weapon_stat.w_attack_sprite] = attack_sprite;
	weapon_index[ID, weapon_stat.w_reload_sprite] = reload_sprite;
	weapon_index[ID, weapon_stat.w_gib] = gib;
	weapon_index[ID, weapon_stat.w_dist_to_gib] = dist_to_gib;
	weapon_index[ID, weapon_stat.w_dist_to_attack] = dist_to_attack;
	weapon_index[ID, weapon_stat.w_attack_sound] = attack_sound;
	weapon_index[ID, weapon_stat.w_bullet_type] = bullet_type;
	weapon_index[ID, weapon_stat.w_noise_level] = noise_level;
	weapon_index[ID, weapon_stat.w_shell_eject_delay] = shell_eject_delay;
	weapon_index[ID, weapon_stat.w_ammo_loaded_type] = ammo_loaded_type;
	weapon_index[ID, weapon_stat.w_ammo_total_type] = ammo_total_type;
	weapon_index[ID, weapon_stat.w_weapon_pickup_sprite] = weapon_pickup_sprite;
	weapon_index[ID, weapon_stat.w_weapon_type] = weapon_type;
}