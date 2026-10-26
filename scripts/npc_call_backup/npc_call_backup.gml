function npc_call_backup(npc_type,npc_state,npc_weapon,npc_target)
{
	spotted = false;
	
	if backup_called == false 
	{
		if instance_exists(objNPCSpawner)
		{
			with objNPCSpawner
			{
				for(var i = 0; i < npc_amount; i++)
				{
					spawn_npc(npc_type,npc_state,npc_weapon,npc_target);
				}
			}
			send_to_hud_queue("Reinforcements have been called.")
		}
		with(object_index) 
		{
			backup_called = true;
		}
	}
}