x = owner.x + lengthdir_x(x_len,owner.image_angle+weapon_dir);
y = owner.y + lengthdir_y(y_len,owner.image_angle+weapon_dir);

if owner.weapon_index != undefined
{
	sprite_index = owner.weapon_index[weapon_id,weapon_stat.w_weapon_pickup_sprite];
}

image_speed = 0;

image_angle = (owner.image_angle - weapon_angle);