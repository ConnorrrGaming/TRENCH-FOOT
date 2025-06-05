function slow_object(target,amount,speed_cutoff_point,death)
{
	if target.speed > 0 then target.speed -= (target.speed / amount);
	
	if target.speed <= speed_cutoff_point then target.speed = 0;
	
	try
	{
		if death == true 
		{
			if target.dead == true && target.explosion_death == false && bled_out == false && speed <= 0
			{
				start_blood_trail(3,target.direction);
				if variable_instance_exists(target,"time_source_list")
				{
					destroy_time_source_list(time_source_list);
				}
				bled_out = true;
			}
		}
	}
	catch(_exception)
	{
		show_debug_message("Seems like this object isn't a living creature, and therefore cannot die :)")
	}
}