if (distance_to_object(objDamageables) <= 1) && explode == false
{
	explode = true;
	alarm[0] = .5 * room_speed;
}

switch(explode)
{
	case false:
	image_speed = 0;
	break;
	
	case true:
	image_speed = 2;
	break;
}