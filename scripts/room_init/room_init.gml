function room_init()
{
	init_room_grid();
	init_blood_surface();
	global.safe_room = instance_exists(objSafeRoomMarker);
}