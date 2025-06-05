function rotate_sprite_to_path(turn_speed)
{
	var _diff = angle_difference(direction, image_angle);
	image_angle += _diff * turn_speed;
}