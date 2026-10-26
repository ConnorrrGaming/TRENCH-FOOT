event_inherited();
slow_object(self,10,2,false,false,0);

if speed <= 2
{
	blood_spatter(self.image_angle,self.image_index,0,sprBloodSplatter,.8,true);
	instance_destroy(self);
}