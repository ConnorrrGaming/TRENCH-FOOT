function create_blood_surface()
{
	if !surface_exists(global.blood_surface)
	{
		global.blood_surface = surface_create(room_width,room_height);
	}
}