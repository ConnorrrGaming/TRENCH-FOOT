function die(_direction,alarm_type,blood_spurt_delay,death_sprite,attacker,blood_amount,death_sfx,damage_sfx)
{
	if self.state == EnemyState.CHASE
	{
		var blood_spurt_direction = 180;
		var death_type = 0
		image_index = 0;
	}
	else
	{
		var blood_spurt_direction = 0;
		var death_type = irandom_range(0,1);
		image_index = 0;
		direction = _direction;
		image_angle = direction;
	}

	try
	{
		var burt = function(blood_spurt_direction)
		{
			if spurting == true blood_spurt(direction-blood_spurt_direction,irandom_range(4,15),-10,10,x,y);
		}
			
		if (death_cause == "objBullet" || death_cause == "objEnemyBullet") && attacker.head_explody == true && distance_to_object(attacker) <= attacker.head_explode_dist
		{
			switch(death_type)
			{
				case 0:
					head_explode(5,10,irandom_range(8,15),point_direction(x,y,attacker.x,attacker.y)-180,-85,85);
					death_sfx = undefined;
				break;
				
				case 1:
					limb_decapitation(sprEnemyGibArm,true,false,true,0,10,self.direction-145,sprEnemyDeadShotgunDecapArm);
					blood_spurt_direction = 270;
				break;
			}
			var sprite_frames = sprite_get_number(self.sprite_index) * (room_speed / sprite_get_speed(self.sprite_index));
			spurtage = time_source_create(time_source_global,blood_spurt_delay,time_source_units_frames,burt,[blood_spurt_direction],sprite_frames+12,time_source_expire_after);
			time_source_start(spurtage);
		}
		else if (death_cause == "objKnifeHitbox" || death_cause == "objEnemyKnifeHitbox")
		{
			switch(irandom_range(0,1))
			{
				case 0:
					limb_decapitation(sprEnemyHead,true,true,false,0,5,self.direction-180,sprEnemyDeadHeadDecap);
					blood_spurt_direction = 0;
					var sprite_frames = sprite_get_number(self.sprite_index);
					spurtage = time_source_create(time_source_global,blood_spurt_delay,time_source_units_frames,burt,[blood_spurt_direction],sprite_frames+blood_amount,time_source_expire_after);
					time_source_start(spurtage);
				break;
				case 1:
					set_death_sprite(sprEnemyDeadSlashed);
					repeat(10)blood_spurt(irandom_range(0,359),irandom_range(4,6),-4,4,x,y);
				break;
			}
		}
		else if explosion_death == true
		{
			set_death_sprite(sprEnemyDeadExplosion);
			show_debug_message("Enemy Health: " +string(self.hlth));
			repeat(35)blood_spurt(irandom_range(0,359),irandom_range(4,10),-2,2,x,y);
		}
		else
		{
			set_death_sprite(death_sprite);
		}
		if explosion_death == false 
		{
			if self.state == EnemyState.CHASE
			{
				knockback(patrol_speed,(direction-180),5,direction);
			}
			else
			{
				knockback((damage_inflicted_mult/1.75),direction,5,undefined);
			}
		}
		show_debug_message("Attacker Distance: "+string(distance_to_object(attacker))+" pixels.")
	}
	catch(_exception)
	{
		show_debug_message("I AM ERROR!\n"+string(_exception));
		set_death_sprite(death_sprite);
	}
	audio_stop_sound(damage_sfx);
	if death_sfx != undefined then audio_play_sound(death_sfx,10,false);
	dead = true;
	
	//destroy_time_source_list(time_source_list);
}