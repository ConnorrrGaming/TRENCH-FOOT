function npc_spotted_ghost_ops()
{
	seeker_set_target(objPlayer);
	if spotted == false
	{
		path_end();
		var attack_mode = function()
		{
			state = EnemyState.ATTACKING;
		}
		if objPlayer.dead == false && (target_facing_away(objPlayer,100) || (cover_blown == true) || (!target_facing_away(objPlayer,100) && (objPlayer.using_weapon == true || objPlayer.sharp_charge == true) || distance_to_object(objPlayer) <= 10))
		{
			attack = time_source_create(time_source_global,reaction_time,time_source_units_seconds,attack_mode,[],2,time_source_expire_after);
			
			time_source_start(attack);
				
			array_push(time_source_list,attack);
			
			with (objEnemyGhostOps)
			{
				seeker_set_target(objPlayer);
				cover_blown = true;
				spotted = true;
				state = EnemyState.CHASE;
			}
		}
	}

	rotate_to_point(x,y,target.x,target.y,.2,true);
}