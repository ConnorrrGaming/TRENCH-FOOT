function instance_to_surface_sprite(target,surface_name)
{
	surface_set_target(application_surface);
	surface_reset_target();
	draw_sprite_ext(target.sprite_index,target.image_index,target.x,target.x,target.image_xscale,target.image_yscale,target.direction,target.image_blend,true);
}