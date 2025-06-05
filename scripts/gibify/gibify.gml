function gibify(giblet_sprite)
{
	var sprite_frames = sprite_get_number(giblet_sprite);
	self.visible = false;
	for (var i = 0; i < sprite_frames; i++)
	{
		var dir_diff = irandom_range(-90,90);
		var speed_diff = irandom_range(2,12);
		blood_spurt(dir_diff,speed_diff,-15,15,x,y);
		limb_decapitation(giblet_sprite,true,false,true,i,speed_diff,(point_direction(x,y,other.x,other.y)+dir_diff)-180,noone);
	}
}