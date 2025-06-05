function room_init()
{
	init_room_grid();
	global.blood_surface = surface_create(room_width,room_height);
}