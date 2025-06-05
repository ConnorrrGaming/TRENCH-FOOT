function get_sight(target,max_dist)
{
	var x1, y1, x2, y2;
	x1 = lengthdir_x(1,direction);
	y1 = lengthdir_y(1,direction);
	x2 = target.x - x;
	y2 = target.y - y;
	if (collision_line(x,y,target.x,target.y,objSolidCollision,false,false) == noone) && distance_to_object(target) <= max_dist
	{
		if dot_product(x1, y1, x2, y2) 
		{
			seen = true 
		}
	}
	else seen = false;
	
	return seen;
}