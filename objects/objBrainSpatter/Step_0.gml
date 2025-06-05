slow_object(self,8,1,false);

if speed <= 1 
{
	var brain_spatter = instance_create_layer(x,y,"Legs",objBrainBits);
	brain_spatter.image_angle = self.image_angle;
	brain_spatter.image_index = self.image_index;
	instance_destroy(self);
}

