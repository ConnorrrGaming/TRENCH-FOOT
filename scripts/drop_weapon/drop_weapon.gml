function drop_weapon(weapon_id,weapon_sprite)
{
	var dir_ran = irandom_range(-60,60);
	var weapon_drop = instance_create_layer(x,y,"Torso",objWeaponPickup);
	weapon_drop.speed = 4;
	weapon_drop.direction = (self.direction - 180) + dir_ran;
	weapon_drop.weapon_id = weapon_id;
	weapon_drop.sprite_index = weapon_sprite;
}