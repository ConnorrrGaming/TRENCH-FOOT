function head_explode(min_brain_speed,max_brain_speed,brain_amount,brain_direction,brain_min_spread,brain_max_spread,attacker)
{
	for (var i = 0; i < brain_amount-1; i++)
	{
		var brainage = instance_create_layer(x,y,"Brains",objBrainSpatter);
		var brainage_spread = random_range(brain_min_spread,brain_max_spread);
		brainage.speed = irandom_range(min_brain_speed,max_brain_speed);
		brainage.direction = (brain_direction + brainage_spread);
		brainage.image_angle = brainage.direction;
	}
	if self != objPlayer
	{
		if self.state == EnemyState.CHASE
		{
			sprite_index = sprEnemyDeadShotgunHeadshotWalk;
		}
		else
		{
		sprite_index = sprEnemyDeadShotgunHeadshot;
		}
	}
	
	if attacker.head_explody == false
	{
		sprite_index = sprEnemyDeadLightWeaponHeadshot;
	}
}