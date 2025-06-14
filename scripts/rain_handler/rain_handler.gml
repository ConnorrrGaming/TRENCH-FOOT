function rain_handler(rain_type,rain_spawn_x,rain_spawn_y,rain_speed,rain_colour)
{
	var rain = instance_create_layer(rain_spawn_x,rain_spawn_y,"Rain",objRain);
	rain.image_blend = rain_colour;
	rain.speed = rain_speed;
}