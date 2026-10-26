function weapon_use(throwable,attacker,fire_sprite,bullet_type,bullet_direction,bullet_rate,bullet_speed,bullet_amount,bullet_range,bullet_layer,min_spread,max_spread,shell_drop)
{	
	var _throwable;
	if throwable == weapon_type.throwable then _throwable = true else _throwable = false
	
	var delay_timer = undefined;
	var shell_eject_timer = undefined;
	
	var shell = function(shell_eject_timer)
	{
		create_shell(objShotgunShell,random_range(2,4),(self.direction - 90));
		if time_source_exists(shell_eject_timer) 
		{
			time_source_destroy(shell_eject_timer);
		}
	}
	
	var delay = function(delay_timer)
	{
		can_fire = true;
		if time_source_exists(delay_timer)
		{
			time_source_destroy(delay_timer);
		}
		return can_fire;
	}
	
	
	if can_fire == true
	{
		for (var i = 0; i <= bullet_amount-1; i++)
		{
			var spread_range = random_range(min_spread,max_spread);
			var bullet = instance_create_layer(x,y,bullet_layer,bullet_type);
			bullet.speed = bullet_speed;
			bullet.direction = (bullet_direction + spread_range);
			bullet.image_angle = bullet.direction;
			bullet.shooter = self;
			bullet.bullet_damage = attacker.damage_per_shot;
			can_fire = false;
		}
		
		if _throwable == true
		{
			bullet.speed = (bullet_speed * (throw_dist / 2));
			bullet.detonation_time = self.grenade_cook_time_left;
		}
		
		image_index = 0;
		if w_type != weapon_type.melee weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_loaded_type]--;
		sprite_index = fire_sprite;
		audio_stop_sound(gun_sound);
		audio_play_sound(gun_sound,0,false);
	
		if shell_delay != undefined
		{
			shell_eject_timer = time_source_create(time_source_global,shell_drop,time_source_units_seconds,shell);
			time_source_start(shell_eject_timer);
		}
		
		delay_timer = time_source_create(time_source_global,bullet_rate,time_source_units_seconds,delay);	
		time_source_start(delay_timer);
	
		var attacker_name = object_get_name(attacker);
	
		if attacker_name == "objPlayer" then create_noise(weapon_noise,objEnemy);
		
		throw_dist = 0;
		grenade_cooking = false;
		grenade_cook_time_left = grenade_cook_time;
		sharp_damage = 1;
		sharp_charge = false;
		meter_at_max = false;
	}
	
	update_ammo_attributes();
}