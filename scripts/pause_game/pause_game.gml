function pause_game()
{
	var centre_x = global.rain_boundary_centre_x;
	var centre_y = global.rain_boundary_centre_y;
	instance_deactivate_all(false);
	audio_pause_all();
	instance_create_depth(centre_x,centre_y,0,objWeaponScreen);
}