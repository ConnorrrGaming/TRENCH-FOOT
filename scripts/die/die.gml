function die(_direction,alarm_type,blood_spurt_delay,death_sprite,attacker,blood_amount,death_sfx,damage_sfx)
{
	var light_head_explode = false;
	
	var weapon_from_dead = owned_weapons[0];
	var weapon_sprite = self.pickup_sprite;
	
	if self.state == EnemyState.CHASE || light_head_explode = true
	{
		var death_type = 0
		image_index = 0;
	}
	else
	{
		var death_type = irandom_range(0,1);
		image_index = 0;
		direction = _direction;
		image_angle = direction;
	}

	try
	{		
		with(self)
		{
			if (death_cause == "objBullet" || death_cause == "objEnemyBullet") && distance_to_object(attacker) <= attacker.head_explode_dist
			{
				if attacker.head_explody == true 
				{
					switch(death_type)
					{
						case 0:
							npc_head_explode(sprHeadshotGibs,5,10,irandom_range(8,15),point_direction(x,y,attacker.x,attacker.y)-180,-85,85,attacker);
							var artery = instance_create_layer(x,y,"Blood",objArtery);
							artery.spurt_direction = self.direction - 180;
							death_sfx = undefined;
						break;
				
						case 1:
							for(var i = 0; i < 8; i++)
							{
								var sg_dir = irandom_range(-90,90);
								var sg_spd = irandom_range(2,10);
								limb_decapitation(sprShotgunDisembowlGibs,false,false,true,i,sg_spd,(self.direction+sg_dir),undefined,true);
							}
							limb_decapitation(sprEnemyGibArm,true,false,true,0,10,self.direction-145,firearm_disembowl_death_sprite,true);
							var artery = instance_create_layer(x,y,"Blood",objArtery);
							artery.spurt_direction = self.direction - 90;
							artery.x = self.x;
							artery.y = self.y;
						break;
					}
				}
				else
				{
					switch(death_type)
					{
						case 0:
							npc_head_explode(sprHeadshotGibs,5,10,irandom_range(1,3),point_direction(x,y,attacker.x,attacker.y)-180,-85,85,attacker);
							light_head_explode = true;
							death_sfx = undefined;
						break;
					
						case 1:
							set_death_sprite(death_sprite,0);
						break;
					}
				
				}
			}
			else if (death_cause == "objKnifeHitbox" || death_cause == "objEnemyKnifeHitbox")
			{
				switch(irandom_range(0,2))
				{
					case 0:
						limb_decapitation(sprEnemyHead,true,true,false,0,5,self.direction-180,knife_head_decap_death_sprite,true);
						var artery = instance_create_layer(x,y,"Blood",objArtery);
						artery.spurt_direction = self.direction - 180;
					break;
					case 1:
						set_death_sprite(knife_main_death_sprite,0);
						repeat(10)blood_spurt(irandom_range(0,359),irandom_range(4,6),-4,4,x,y);
					break;
					case 2:
						image_index = 0;
						sprite_index = knife_disembowl_death_sprite;
						repeat(10)blood_spurt(irandom_range(0,359),irandom_range(4,6),-4,4,x,y);
					break;
				}
			}
			else if (death_cause == "objGlassShard")
			{
				image_index = 0;
				sprite_index = glass_shard_death_sprite;
				var artery = instance_create_layer(x,y,"Blood",objArtery);
				artery.spurt_direction = self.direction;
			}
			else if explosion_death == true
			{
				set_death_sprite(explosion_main_death_sprite,0);
				//("Enemy Health: " +string(self.hlth));
				repeat(35)blood_spurt(irandom_range(0,359),irandom_range(4,10),-2,2,x,y);
			}
			else
			{
				set_death_sprite(death_sprite,0);
			}
		
		}
		
		if explosion_death == false 
		{
			if self.state == EnemyState.CHASE || light_head_explode == true
			{
				knockback(patrol_speed,(direction-180),5,direction);
			}
			else
			{
				knockback((damage_inflicted_mult/2.5),direction,5,undefined);
			}
		}
		//("Attacker Distance: "+string(distance_to_object(attacker))+" pixels.")
	}
	catch(_exception)
	{
		show_debug_message("I AM ERROR!\n"+string(_exception));
		set_death_sprite(death_sprite,0);
	}
	
	var sprite_frames = sprite_get_number(self.sprite_index) * (room_speed / sprite_get_speed(self.sprite_index));
	var rigor_mortis_timer = sprite_frames;
	
	if self.current_primary != undefined 
	{
		drop_weapon(current_primary,weapon_index[current_primary,weapon_stat.w_weapon_pickup_sprite]);
		instance_destroy(primary_stored);
	}
	
	if self.current_secondary != undefined 
	{
		drop_weapon(current_secondary,weapon_index[current_secondary,weapon_stat.w_weapon_pickup_sprite]);
		instance_destroy(secondary_stored);
	}
	
	drop_helmet(helmet_sprite,0,5,self.direction);
	
	audio_stop_sound(damage_sfx);
	//if death_sfx != undefined then audio_play_sound(death_sfx,10,false);
	alarm[11] = rigor_mortis_timer;
	persistent = false;
	solid = false;
	dead = true;
	hlth = 0;
	
	if instance_exists(light)
	{
		instance_destroy(light);
	}
}