slow_object(self,8,.5,false,true,10);

if rotatable == true
{
	image_angle = image_angle + (speed * 4);
}

if animated == true
{
	image_speed = (speed);
}

if non_interact == true && speed <= .5
{
	replace_with_surface(global.blood_surface,sprite_index,image_index,image_angle,c_white,image_alpha,true);
}