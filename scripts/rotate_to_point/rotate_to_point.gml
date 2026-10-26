function rotate_to_point(x1,y1,x2,y2,turn_speed,sprite_rotate)
{
	var _dir = point_direction(x1,y1,x2,y2);
	var _diff = angle_difference(_dir, direction);
	direction += _diff * turn_speed;
	if sprite_rotate == true image_angle = direction;
}