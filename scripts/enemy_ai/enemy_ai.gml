// IMPORTANT: in order for this function to work, the enemy_init() function must be called
// in the enemy's Create event. without this function the enemy won't know what these
// variables or states are and will trip over its own foot and fucking die (AKA crash).

function enemy_ai()
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
	
		if get_sight(objPlayer,sight) == true && self.state != EnemyState.ATTACKING then state = EnemyState.SPOTTED;

		if hlth <= 0 && dead == false
		{
			die(point_direction(x,y,objPlayer.x,objPlayer.y),1,1,sprEnemyDead,objPlayer,12,death_sound,damage_sound);
			path_end();
		}
	
	}
	else
	// what the enemy will do once it's fucking dead
	{
		state = undefined;
	}
}
