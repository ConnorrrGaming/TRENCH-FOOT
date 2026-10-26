// so no head?
function npc_head_explode(head_giblets,min_brain_speed,max_brain_speed,brain_amount,brain_direction,brain_min_spread,brain_max_spread,attacker)
{
	var head_giblet_enable;
	
	if self != objPlayer
	{
		if self.state == EnemyState.CHASE
		{
			var explody_death_sprite = irandom_range(head_explode_walk_death_sprite,head_explode_walk_death_sprite)
			sprite_index = explody_death_sprite;
		}
		else
		{
			var prob = 10;
			var piss = irandom_range(0,prob);
			if piss != 0
			{
				sprite_index = head_explode_death_sprite;
			}
			else
			{
				sprite_index = head_explode_piss_death_sprite;
			}
		}
	}
	
	
	
	if attacker.head_explody == false
	{
		sprite_index = headshot_light_death_sprite;
		head_giblet_enable = false;
	}
	else
	{
		head_giblet_enable = true;
	}
	
	head_explode(head_giblets,min_brain_speed,max_brain_speed,brain_amount,brain_direction,brain_min_spread,brain_max_spread,head_giblet_enable);
	
}