function knockback(knockback_speed,knockback_direction,speed_cap,sprite_direction)
{
	if speed >= speed_cap 
	{
		speed = speed_cap;
	}
	else
	{
		speed += knockback_speed;
	}
	direction = knockback_direction-180;
	if sprite_direction == undefined
	{
		image_angle = direction-180;
	}
	else
	{
		image_angle = sprite_direction;
	}
}