function npc_attacking()
{
	path_end();
	spotted = false;
	if get_sight(objPlayer,sight) && objPlayer.dead == false
	{
		speed = 0;
		seeker_set_target(objPlayer);
		weapon_use(throwable_weapon,objEnemy,fire_sprite,hitbox_type,self.direction,fire_rate,bullet_speed,bullet_amount,bullet_range,"Bullets",spread_min_amount,spread_max_amount,shell_delay);
		using_weapon = true;
		rotate_to_point(x,y,target.x,target.y,.4);
	}
	else
	{
		state = EnemyState.CHASE;
	}
}