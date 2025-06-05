function weapon_use(throwable,attacker,fire_sprite,bullet_type,bullet_direction,bullet_rate,bullet_speed,bullet_amount,bullet_range,bullet_layer,min_spread,max_spread,shell_drop)
{	
	var shell = function()
	{
		create_shell(objShotgunShell,random_range(2,4),(self.direction - 90));
	}
	
	var delay = function()
	{
		can_fire = true;
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
			can_fire = false;
		}
		
		if throwable == true
		{
			bullet.speed = (bullet_speed * (throw_dist / 2));
			bullet.detonation_time = self.grenade_cook_time_left;
		}
		
		image_index = 0;
		sprite_index = fire_sprite;
		if ammo_loaded != -1 weapon[current_weapon][9] -= 1;
		audio_stop_sound(gun_sound);
		audio_play_sound(gun_sound,0,false);
	
		if shell_delay != undefined
		{
			shell_eject_timer = time_source_create(time_source_global,shell_drop,time_source_units_seconds,shell);
			time_source_start(shell_eject_timer);
			array_push(time_source_list,shell_eject_timer);
		}
	
		delay_timer = time_source_create(time_source_global,bullet_rate,time_source_units_seconds,delay);	
		time_source_start(delay_timer);
	
		array_push(time_source_list,delay_timer);
	
		var attacker_name = object_get_name(attacker);
	
		if attacker_name == "objPlayer" then create_noise(weapon_noise,objEnemy);
	
		show_debug_message(weapon[current_weapon][9]);
		show_debug_message("Attacker: "+string(attacker));
		
		throw_dist = 0;
		grenade_cooking = false;
		grenade_cook_time_left = grenade_cook_time;
	}
}