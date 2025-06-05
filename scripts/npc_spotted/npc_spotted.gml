function npc_spotted()
{
	seeker_set_target(objPlayer);
	if spotted == false
	{
		path_end();
		var attack_mode = function()
		{
			state = EnemyState.ATTACKING;
		}
		attack = time_source_create(time_source_global,reaction_time,time_source_units_seconds,attack_mode,[],2,time_source_expire_after);
			
		time_source_start(attack);
				
		array_push(time_source_list,attack);
		
		spotted = true;
	}

	rotate_to_point(x,y,target.x,target.y,.2);
}