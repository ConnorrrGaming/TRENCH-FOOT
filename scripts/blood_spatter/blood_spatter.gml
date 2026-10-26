function blood_spatter(spatter_direction,spatter_image_index,spatter_image_speed,spatter_type,spatter_alpha,randomise_col)
{
	//var blood = layer_sprite_create("Spattage",x,y,spatter_type);
	//layer_sprite_angle(blood,spatter_direction);
	//layer_sprite_index(blood,spatter_image_index);
	//layer_sprite_speed(blood,spatter_image_speed);
	//layer_sprite_alpha(blood,spatter_alpha);
	
	try
	{	
		switch(randomise_col)
		{
			case true:
				var blood_col = blood_colour_randomise(.5,.7);
			break;

			case false:
				var blood_col = blood_colour_randomise(.5,.7);
			break;
		}
		
		replace_with_surface(global.blood_surface,spatter_type,spatter_image_index,spatter_direction,blood_col,spatter_alpha,false);
	}
	catch(_exception)
	{
		show_debug_message(_exception.longMessage);
	}
	
}