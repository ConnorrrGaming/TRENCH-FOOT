if hit_roof == false
{
	if blood == false
	{
		var splash = instance_create_layer(x,y,"Blood",objRainSplash);
		splash.image_blend = self.image_blend;
	}
	else
	{
		var blood_spatter_type = irandom_range(0,2);
		blood_spatter(self.direction,blood_spatter_type,0,sprBloodSplatter,.8,true);
	}
}