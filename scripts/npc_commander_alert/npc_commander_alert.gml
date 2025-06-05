function npc_commander_alert()
{
	if self.alerted_others == false && self.dead == false
	{
		audio_play_sound(sndCONT,0,false);
		enemy_num = collision_circle_list(x,y,shout_range,objEnemy,true,true,enemy_list,false);
		if enemy_num > 0
		{
			for(var i = 0; i < enemy_num; i++)
			{
				with enemy_list[| i]
				{
					seeker_set_target(objPlayer);
					
					var chase_mode = function()
					{
						state = EnemyState.CHASE;
					}
					chase = time_source_create(time_source_global,self.reaction_time,time_source_units_seconds,chase_mode,[],1,time_source_expire_after);
			
					time_source_start(chase);
				
					array_push(time_source_list,chase);
				}
					
			}
		}
		alerted_others = true;
		with (self) ds_list_destroy(enemy_list);
	}
}