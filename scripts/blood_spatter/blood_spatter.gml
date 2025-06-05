function blood_spatter(spatter_direction,spatter_image_index,spatter_image_speed,spatter_type,randomise_col)
{
	var blood = layer_sprite_create("Spattage",x,y,spatter_type);
	layer_sprite_angle(blood,spatter_direction);
	layer_sprite_index(blood,spatter_image_index);
	layer_sprite_speed(blood,spatter_image_speed);
	
	switch(randomise_col)
	{
		case true:
			layer_sprite_blend(blood,blood_colour_randomise(.5,.7));
		break;

		case false:
			layer_sprite_blend(blood,blood_colour_randomise(.5,.5));
		break;
	}
	
}