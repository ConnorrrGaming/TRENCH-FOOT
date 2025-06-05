function create_noise(noise_level,seeker)
{
	var radius_size = (noise_level);
		
	with(seeker) 
	{
		if distance_to_object(other) <= radius_size 
		{
			seeker_set_target(other);
			sussy_level++;
			if (self.state != EnemyState.ATTACKING && self.state != EnemyState.SPOTTED && self.state != EnemyState.SUSPICIOUS && self.state != EnemyState.CHASE) 
			{
				state = EnemyState.SUSPICIOUS;
			}
		}
	}
}