function init_blood_surface()
{
	global.blood_surface = undefined;
	
	create_instance(0,0,"Blood",objBloodManager);

	create_blood_surface();
}