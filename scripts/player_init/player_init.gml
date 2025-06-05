function player_init()
{
	spd = 1;
	torso = instance_create_layer(x,y,"Torso",objPlayer);
	reticle = instance_create_layer(x,y,"Crosshair",objReticle);
	walk_direction_marker = instance_create_layer(x,y,"Legs",objWalkDirectionMarker);
	reticle.image_speed = 0;
	state = 1;
	state_definition = [];
	state_definition[0] = "Paused";
	state_definition[1] = "Playable";
	using_weapon = false;
	//shotgun_walk_sprite = sprPlayerWalkShotgun;
	ar_walk_sprite = sprPlayerWalk;
	angle = [0,45,90,135,180,225,270,315,360];
	alarm[0] = 0 * room_speed;

	current_weapon = 0;
	
	init_weapon_system();
	
	update_weapon_attributes();
	

}