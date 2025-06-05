event_inherited();
slow_object(self,10,2,false);

if speed <= 2
{
	blood_spatter(self.image_angle,self.image_index,0,sprBloodSplatter,true);
	instance_destroy(self);
}