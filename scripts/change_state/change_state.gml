function change_state(target,target_state_var,state_change,delay,delay_units)
{
	time_to_change = function(target_state_var,state_change)
	{
		target.target_state_var = state_change;
	}
	
	var change = time_source_create(time_source_global,delay,delay_units,time_to_change);
	time_source_start(change);
}