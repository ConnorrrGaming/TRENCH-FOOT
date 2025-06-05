function update_weapon_attributes()
{
	fire_rate = weapon[current_weapon][0];
	mag_capacity = weapon[current_weapon][1];
	bullet_amount = weapon[current_weapon][2];
	bullet_range = weapon[current_weapon][3];
	bullet_speed = weapon[current_weapon][4];
	damage_per_shot = weapon[current_weapon][5];
	spread_min_amount = weapon[current_weapon][6];
	spread_max_amount = weapon[current_weapon][7];
	weapon_name = weapon[current_weapon][8];
	ammo_loaded = weapon[current_weapon][9];
	walk_sprite = weapon[current_weapon][11];
	fire_sprite = weapon[current_weapon][12];
	reload_sprite = weapon[current_weapon][13];
	head_explody = weapon[current_weapon][14];
	head_explode_dist = weapon[current_weapon][15];
	gun_sound = weapon[current_weapon][16];
	hitbox_type = weapon[current_weapon][17];
	weapon_noise = weapon[current_weapon][18];
	shell_delay = weapon[current_weapon][19];
	sharp_weapon = weapon[current_weapon][20];
	throwable_weapon = weapon[current_weapon][21];
}