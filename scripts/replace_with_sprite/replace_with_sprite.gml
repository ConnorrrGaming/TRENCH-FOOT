function replace_with_sprite(sprite_layer_name,sprite_type,sprite_direction,sprite_image_index,sprite_image_speed,sprite_alpha,destroy_instance)
{
	var sprite = layer_sprite_create(string(sprite_layer_name),x,y,sprite_type);
	layer_sprite_angle(sprite,sprite_direction);
	layer_sprite_index(sprite,sprite_image_index);
	layer_sprite_speed(sprite,sprite_image_speed);
	layer_sprite_alpha(sprite,sprite_alpha);
	if destroy_instance == true
	{
		instance_destroy(self);
	}
}