if rigor_mortis == false
{
	script_execute(enemy_commander_ai);
}
else
{
	replace_with_sprite("Bodies",self.sprite_index,self.image_angle,self.image_index,0,self.image_alpha,true);
}