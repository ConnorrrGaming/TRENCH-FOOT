function replace_with_surface(surface_layer,sprite,sprite_image_index,sprite_direction,sprite_col,sprite_alpha,kill_instance)
{
	if surface_exists(global.blood_surface)
	{
		surface_set_target(surface_layer);
		
		draw_sprite_ext(sprite,sprite_image_index,x,y,image_xscale,image_yscale,sprite_direction,sprite_col,sprite_alpha);
		
		surface_reset_target();
		
		if kill_instance == true instance_destroy(self);
	}
}