slow_object(self,knockback_slowdown_amount,.5,true,true,10);

damage_overlay.image_alpha = (damage_taken / damage_taken_max);

if dead == false
{
	animation_handler();

	reticle.visible = true;

	var attack = (mouse_check_button(mb_left));
	var attack_button_release = mouse_check_button_released(mb_left);

	rotate_to_point(x,y,reticle.x,reticle.y,1,true);
	if global.safe_room == false
	{
		if (weapon_index[owned_weapons[current_weapon],weapon_stat.w_ammo_loaded_type] > 0 
		&& (attack && w_type != weapon_type.throwable) 
		&& (attack && w_type != weapon_type.melee)) 
		|| (attack_button_release && w_type == weapon_type.throwable) 
		|| (attack_button_release && w_type == weapon_type.melee) 
		&& reloading == false
		{
			weapon_use(w_type,objPlayer,fire_sprite,hitbox_type,direction,fire_rate,bullet_speed,bullet_amount,bullet_range,"Bullets",spread_min_amount,spread_max_amount,shell_delay);
			using_weapon = true;
		}
		else if reloading == false && w_type != weapon_type.throwable
		{
			//reload_init();
		}

		if (w_type == weapon_type.throwable && attack) 
		{
			var throw_dist_max = 50;
			var throw_dist_inc = .5;
			if throw_dist < throw_dist_max then throw_dist += throw_dist_inc;
			if grenade_cooking == false 
			{
				alarm[0] = grenade_cook_time * room_speed;
				grenade_cooking = true;
			}
			grenade_cook_time_left = alarm[0];
			if throw_dist == throw_dist_max then meter_at_max = true;
			//(grenade_cook_time_left);
		}
			
			
		if (w_type == weapon_type.melee) && able_to_execute(instance_nearest(x,y,objEnemy)) == true && preying == false
		{
			sprite_index = knife_unholstered_walk_sprite;
			preying = true;
			show_debug_message("Can execute enemy");
		}
		else if sharp_charge == false
		{
			preying = false;
		}
		
		if (w_type == weapon_type.melee && attack) && using_weapon == false
		{
			var sharp_damage_max = 10;
			var sharp_damage_inc = .1;
			if sharp_damage < sharp_damage_max then sharp_damage += sharp_damage_inc;
			{
				if sharp_charge == false
				{
					sharp_charge = true;
				}
			}
			if sharp_damage == sharp_damage_max then meter_at_max = true;
			
			if preying == true
			{
				show_debug_message("funt");
			}
		}
	}

	if collision_line(x,y,reticle.x,reticle.y,objSolidCollision,false,false) != noone
	{
		reticle.image_index = 1;
	}
	else
	{
		reticle.image_index = 0;
	}

	if hlth <= 0 && dead == false
	{
		var death_room = room;
		live--;
		if live <= 0
		{
			var fade_type = true;
			var fade_amount = .1;
			var fade_starting_alpha = 0;
			var fade_colour = #000000;
			audio_stop_all();
			var death_room = rmGameOver;
			alarm[2] = 2 * room_speed;
			screen_fade(fade_type,fade_amount,fade_starting_alpha,fade_colour);
		}

		//persistent = false;
		image_index = 0;
		image_speed = 1;
		die(direction,1,1,sprEnemyDead,objEnemy,40,death_sound,damage_sound);
		path_end();
		audio_stop_sound(global.music_playing);
		instance_destroy(light);
		instance_destroy(objPlayerCollider);
	}
	
}

else
// what the player will do once it's fucking dead
{	
	if alarm[2] <= 0 && live <= 0
	{
		room_goto(rmGameOver);
	}
}




//("Player Speed: "+string(self.speed))

//("Bullet Type: "+string(bullet));
