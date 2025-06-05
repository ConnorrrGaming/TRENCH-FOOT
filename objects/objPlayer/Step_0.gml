if dead == false
{
	animation_handler();

	reticle.visible = true;

	var attack = (mouse_check_button(mb_left));
	var attack_button_release = mouse_check_button_released(mb_left);

	snap_to_point(x,y,reticle.x,reticle.y);

	if (attack && throwable_weapon == false) || (attack_button_release && throwable_weapon == true)
	{
		weapon_use(throwable_weapon,objPlayer,fire_sprite,hitbox_type,direction,fire_rate,bullet_speed,bullet_amount,bullet_range,"Bullets",spread_min_amount,spread_max_amount,shell_delay);
		using_weapon = true;
	}

	if (throwable_weapon == true && attack) 
	{
		if throw_dist < 50 then throw_dist += .5;
		if grenade_cooking == false 
		{
			alarm[0] = grenade_cook_time * room_speed;
			grenade_cooking = true;
		}
		grenade_cook_time_left = alarm[0];
		show_debug_message(grenade_cook_time_left);
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
		die(direction,1,1,sprEnemyDead,objPlayer,40,death_sound,damage_sound);
		path_end();
		instance_destroy(objPlayerLegs);
	}
	
	
}

else
// what the player will do once it's fucking dead
{
	slow_object(self,knockback_slowdown_amount,.5,true);
}

damage_overlay.image_alpha = (damage_taken / damage_taken_max);

if damage_taken > 50 && damage_overlay.visible == false
{
	damage_overlay.visible = true;
}
else if damage_overlay.visible == true && damage_overlay.image_alpha == 0
{
	damage_overlay.visible = false;
}

