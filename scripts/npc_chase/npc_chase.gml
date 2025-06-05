function npc_chase()
{
	spotted = false;
	begin_path(chase_path,global.grid,target,chase_speed,EnemyState.LOOKING);
}