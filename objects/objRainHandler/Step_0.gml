try
{
	camera_x = camera_get_view_x(view_camera[0]);
	camera_y = camera_get_view_y(view_camera[0]);
	
	camera_width = camera_get_view_width(view_camera[0]);
	camera_height = camera_get_view_height(view_camera[0]);
	
	camera_centre_x = camera_x + (camera_width / 2);
	camera_centre_y = camera_y + (camera_height / 2);
	
	show_debug_message(camera_x);
	show_debug_message(camera_y);
	
	global.rain_boundary_x = view_xport[0] - rain_boundary_offset;
	global.rain_boundary_y = view_yport[0] - rain_boundary_offset;
	
	global.rain_boundary_centre_x = (camera_centre_x);
	global.rain_boundary_centre_y = (camera_centre_y);
	
	
	if (instance_number(objRain) < rain_amount)
	{
		rain_handler(objRain,irandom_range(camera_x-rain_boundary_offset,camera_x+camera_width),irandom_range(camera_y-rain_boundary_offset,camera_y+camera_height),5,rain_colour);
	}
}
catch(_exception)
{
	// do sum shit son
	show_debug_message("CONNOR YER SHIT DONT WORK");
	show_debug_message("\n\n"+string(_exception));
}