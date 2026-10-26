function able_to_execute(victim)
{
	var execution_dist = 20;
	
	var can_execute = false;
	
	if instance_exists(victim) && !array_contains(victim.non_executable_states,victim.state)
	{
		can_execute = get_sight(victim,execution_dist)
	}
	
	return can_execute;
}