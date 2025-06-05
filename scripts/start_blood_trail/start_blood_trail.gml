function start_blood_trail(trail_amount,trail_dir)
{
	for (var i = 0; i < trail_amount; i++)
	{
		blood_trail = instance_create_layer(x,y,"Blood",objBloodTrailHead);
		blood_trail.direction = trail_dir + irandom_range(-10,10);
	}
}