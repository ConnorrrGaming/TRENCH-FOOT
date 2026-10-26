if surface_exists(global.blood_surface)
{
	draw_surface(global.blood_surface,0,0);
}
else if !surface_exists(global.blood_surface)
{
	create_blood_surface();
}