if fade_type == true
{
	if image_alpha < alpha_max
	{
		image_alpha += fade_amount;
	}
	
	if image_alpha == alpha_max && endaction == true
	{
		room_goto(room_target);
	}
	
}
else if fade_type == false
{
	if image_alpha > alpha_min
	{
		image_alpha -= fade_amount;
	}
}