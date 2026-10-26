if instance_exists(objPlayerSpawner)
{
	x = objPlayerSpawner.x;
	y = objPlayerSpawner.y;
	
	self.visible = true;
	torso.visible = true;
	torso.damage_overlay.visible = true;
	torso.reticle.visible = true;
	area_trans = false;
	
}
else
{
	self.visible = false;
	torso.visible = false;
	torso.damage_overlay.visible = false;
	torso.reticle.visible = false;
}