if kickable == true
{
	if other.move_x != 0 || other.move_y != 0
	{
		var speed_alt = irandom_range(4,8);
		direction = point_direction(x,y,other.x,other.y)-180;
		if rotatable != true then image_angle = direction;
		speed = other.spd * speed_alt;
	}
}