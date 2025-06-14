image_alpha = rain_shade;
rain_shade -= .075;

if distance_to_point(global.rain_boundary_centre_x,global.rain_boundary_centre_y) <= 20
{
	instance_destroy(self);
}