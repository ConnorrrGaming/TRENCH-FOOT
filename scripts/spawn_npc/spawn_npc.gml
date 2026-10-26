function spawn_npc(type,state,weapon,target)
{
	var npc = instance_create_layer(x,y,layer,type);
	show_debug_message(npc);
	npc.state = state;
	if npc.state = EnemyState.CHASE
	with(npc)
	{
		seeker_set_target(target);
		spotted = true;
	}
	
	if npc.object_index == objEnemyGhostOps then npc.cover_blown = true;
}