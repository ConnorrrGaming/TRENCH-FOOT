function blood_spurt(blood_direction,blood_speed,blood_min_spread,blood_max_spread,x_pos,y_pos)
{
	var blood_spread = random_range(blood_min_spread,blood_max_spread);
	var spurtage = instance_create_layer(x_pos,y_pos,"Blood",objBloodSpurt);
	spurtage.visible = true;
	spurtage.speed = blood_speed;
	spurtage.direction = (blood_direction + blood_spread);
	spurtage.image_angle = spurtage.direction;
	show_debug_message("Blood Spurtage in Progress");	
}