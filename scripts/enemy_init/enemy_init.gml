function enemy_init()
{
	dead = false;
	wounded = false;
	gibbed = false;
	pleading = false;
	rigor_mortis = false;
	damage_inflicted_mult = 0;
	path_started = false;
	bled_out = false;
	spurting = false;
	knockback_slowdown_amount = 8;
	knockback_noise = 50;
	spotted = false;
	sussy_level = 0; // i can't control my sussy level
	seen = false;
	sight = 500;
	target = undefined;
	death_cause = undefined;
	using_weapon = false;
	explosion_death = false;
	max_blood_spill = 15;


	//current_weapon = 0;
	bullet = objEnemyBullet;
	sniper_bullet = objEnemySniperBullet;
	knife_hitbox = objEnemyKnifeHitbox;
	grenade = objEnemyGrenade;
	throw_dist = 1;
	grenade_cook_time = 4;
	grenade_cook_time_left = grenade_cook_time;
	grenade_cooking = false;
	can_fire = true;
	damage_taken = 0;
	damage_taken_max = 200;
	
	alerted_others = false;
	enemy_list = ds_list_create();
	
	swapped_weapon = false;

	create_ammo();
	create_weapons();
	owned_weapons = [];
	
	create_primary_stored_weapon();
	create_secondary_stored_weapon();
	
	if current_primary != undefined primary_stored.image_alpha = owned_weapons[current_weapon] != current_primary;
	if current_secondary != undefined secondary_stored.image_alpha = owned_weapons[current_weapon] != current_secondary;
	
	update_weapon_attributes();
	

	chase_path = path_add();

	target_marker = instance_create_layer(x,y,"Legs",objTargetMarker);
	target_marker.visible = false;

	death_sound = sndDeathPlaceholder1;
	damage_sound = undefined;

	time_source_list = [];

	enum EnemyState
	{
		PATROL,
		WANDERING,
		IDLE,
		SUSPICIOUS,
		APPREHENSIVE,
		SPOTTED,
		CHASE,
		ATTACKING,
		LOOKING,
		SEARCHING,
		GIVEUP,
		DEAD
	}

	non_executable_states = [EnemyState.SPOTTED,EnemyState.CHASE,EnemyState.ATTACKING];

	sprite_index = walk_sprite;
	direction = image_angle;
	
	light = instance_create_layer(x,y,layer,objCharacterLight);
	light.target = self;
}