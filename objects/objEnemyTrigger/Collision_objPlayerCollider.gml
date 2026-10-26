if instance_exists(objEnemy)
{
	with(objEnemy)
	{
		seeker_set_target(objPlayer);
		state = EnemyState.SPOTTED;
	}
}