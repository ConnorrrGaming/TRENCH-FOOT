function enemy_commander_ai()
{
	slow_object(self,knockback_slowdown_amount,.5,true);
	
	if dead == false
	{	
		switch(state)
		{
			case EnemyState.PATROL:
				npc_patrol();
			break;
	
	
			case EnemyState.WANDERING:
				npc_wandering();
			break;
	
	
			case EnemyState.IDLE:
				npc_idle();
			break;
	
			case EnemyState.SUSPICIOUS:
				npc_suspicious();
			break;

	
			case EnemyState.APPREHENSIVE:
				npc_apprehensive();
			break;
		
	
			case EnemyState.SPOTTED:
				npc_spotted();
			break;
		
		
			case EnemyState.CHASE:
				npc_chase();
			break;
	
			case EnemyState.ATTACKING:
				npc_attacking();
			break;
		
			case EnemyState.LOOKING:
				npc_looking();
			break;
		
			case EnemyState.SEARCHING:
				npc_searching();
			break;
	
			case EnemyState.GIVEUP:
				npc_give_up();
			break;
		}
	
		if self.state != EnemyState.ATTACKING && (get_sight(objPlayer,sight) == true || state == EnemyState.SUSPICIOUS)
		{
			state = EnemyState.SPOTTED;
		}

		if hlth <= 0 && dead == false
		{
			die(point_direction(x,y,objPlayer.x,objPlayer.y),1,1,sprEnemyDead,objPlayer,12,death_sound,damage_sound);
			path_end();
		}
		
		if get_sight(objPlayer,sight) && objPlayer.dead == false
		{
			var alert_mode = function()
			{
				npc_commander_alert();
			}
			alert = time_source_create(time_source_global,reaction_time,time_source_units_seconds,alert_mode,[],1,time_source_expire_after);
			
			time_source_start(alert);
			
				
			array_push(time_source_list,alert);
		}
	
	}
	else
	// what the enemy will do once it's fucking dead
	{
		state = undefined;
	}
}