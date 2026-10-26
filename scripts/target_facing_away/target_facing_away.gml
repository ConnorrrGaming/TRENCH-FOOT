function target_facing_away(target,max_dist)
{
	with(target)
	{
		var x1, y1, x2, y2;
		x1 = lengthdir_x(1,direction);
		y1 = lengthdir_y(1,direction);
		x2 = other.x - x;
		y2 = other.y - y;
		if (collision_line(other.x,other.y,self.x,self.y,objSolidCollision,false,false) == noone) && distance_to_object(other) <= max_dist
		{
			if !dot_product(x1, y1, x2, y2) 
			{
				return true;
			}
		}
		else return false;
	}
}