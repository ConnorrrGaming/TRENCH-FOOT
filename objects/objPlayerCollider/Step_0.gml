torso.x = x;
torso.y = y;

legs.x = x;
legs.y = y;
		
if torso.using_weapon != true && torso.reloading != true
{
	torso.image_speed = legs.image_speed;
}
else
{
	torso.image_speed = 1;
}
if area_trans == false
{
	var move_l = (keyboard_check(ord("A")) || keyboard_check(vk_left));
	var move_r = (keyboard_check(ord("D")) || keyboard_check(vk_right));
	var move_d = (keyboard_check(ord("S")) || keyboard_check(vk_down));
	var move_u = (keyboard_check(ord("W")) || keyboard_check(vk_up));

	var move_sprint = (keyboard_check(vk_shift))

	var move_h = move_r - move_l;
	var move_v = move_d - move_u;
		
	if (move_l || move_r || move_d || move_u)
	{
		legs.image_speed = (spd);
	}
	else
	{
		legs.image_speed = 0;
		legs.image_index = 0;
	}

	if (move_sprint) && (move_x != 0 || move_y != 0)
	{
		sprinting = true;
		move_x = ((move_h * spd)*2);
		move_y = ((move_v * spd)*2);
	}
	else
	{
		move_x = (move_h * spd);
		move_y = (move_v * spd);
		sprinting = false;
	}
	
	rotate_to_point(move_r,move_d,move_l,move_u,.1,false);
	
	with(legs)
	{
		rotate_to_point(move_r,move_d,move_l,move_u,.1,true);
	}
}
		
try
{
	//Horizontal collision
	if place_meeting(x+(move_x),y,objClearCollision) {
		while (!place_meeting(x+sign(move_x),y,objClearCollision)) {
			x = x + sign(move_x); }
		move_x = 0; }


	//Vertical collision
	if place_meeting(x,y+(move_y),objClearCollision) { 
		while (!place_meeting(x,y+sign(move_y),objClearCollision)) {
			y = y + sign(move_y); }
		move_y = 0; }
	
	move_and_collide(move_x,move_y,objClearCollision,4,0,0,move_x,move_y);
	
	
	if place_meeting(x,y,objHazardCollision)
	{
		torso.tangled = true;
	}
	else
	{
		torso.tangled = false;
	}
	
	if torso.tangled == true
	{
		spd = tangled_spd;
		with (torso)
		{
			if dead == false
			{
				damage_sound = irandom_range(sndDamage1,sndDamage4);
				take_damage(1,1,true,objHazardCollision,damage_sound,objHazardCollision);
			}
		}		
	}
	else
	{
		spd = 1;
	}
	
	var noise_level = (sprinting * 75)
	create_noise(noise_level,objEnemy);
	
}
catch(_exception)
{
	//("ERROR: "+(string(_exception.message)));
}