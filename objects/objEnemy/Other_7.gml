if self.dead == false
{
	switch(state)
	{
		case EnemyState.LOOKING:
			sprite_index = walk_sprite;
			state = EnemyState.SEARCHING;
		break;
	}
	
	if using_weapon == true 
	{
		using_weapon = false;
		sprite_index = walk_sprite;
	}
	
	if wounded = true
	{
		pleading = true;
		sprite_index = pleading_wounded_sprite;
	}
	
	if sprite_index == call_backup_sprite
	{
		sprite_index = walk_sprite;
	}

}

if dead == true 
{
	image_index = image_number-1;
	spurting = true;
}
