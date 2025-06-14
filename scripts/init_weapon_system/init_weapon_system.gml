function init_weapon_system()
{
	w_f_revolver[0] = 0.5;						// fire rate
	w_f_revolver[1] = 6;						// mag capacity
	w_f_revolver[2] = 1;						// bullet per shot
	w_f_revolver[3] = 1;						// bullet range
	w_f_revolver[4] = 22;						// bullet speed
	w_f_revolver[5] = 52;						// damage per shot
	w_f_revolver[6] = -.2;						// minimum spread amount
	w_f_revolver[7] = .2;						// maximum spread amount
	w_f_revolver[8] = "Revolver";				// weapon name
	w_f_revolver[9] = 6;						// ammo loaded
	w_f_revolver[10] = 18;						// total ammo
	w_f_revolver[11] = revolver_walk_sprite;	// walk sprite
	w_f_revolver[12] = revolver_fire_sprite;	// attack sprite
	w_f_revolver[13] = revolver_reload_sprite;	// reload sprite
	w_f_revolver[14] = false;					// can explode heads?
	w_f_revolver[15] = 60;						// distance to cause head explosions
	w_f_revolver[16] = sndRevolverFire;			// weapon sound
	w_f_revolver[17] = bullet;					// bullet type
	w_f_revolver[18] = 100;						// noise level
	w_f_revolver[19] = undefined;				// shell eject delay
	w_f_revolver[20] = false;					// sharp weapon ?
	w_f_revolver[21] = false;					// throwable ?
	
	w_f_shotgun = [1.2, 6, 10, 1, 20, 20,-7,7,"Shotgun", 6, 18, shotgun_walk_sprite, shotgun_fire_sprite, shotgun_reload_sprite, true,60,sndShotgunFire,bullet,500,.5,false,false];
	w_f_sniper = [1, 3, 1, 1, 25, 300,0,0,"Sniper Rifle", 3, 9, sniper_walk_sprite, sniper_fire_sprite, sniper_reload_sprite, true,500,sndShotgunFire,sniper_bullet,1000,.5,false,false];
	w_f_ar_15 = [0.09, 30, 1, 1, 18, 22,-1,1,"AR-15", 30, 90, ar_walk_sprite, ar_fire_sprite, ar_reload_sprite, true,40,sndARFire,bullet,350,0,false,false];
	w_m_knife = [.8,0,1,0,0,150,0,0,"Knife",0,0,knife_walk_sprite,knife_attack_sprite,undefined,false,undefined,sndKnifeSlash,knife_hitbox,0,undefined,true,false];
	
	w_t_grenade[0] = .5;
	w_t_grenade[1] = 1;
	w_t_grenade[2] = 1;
	w_t_grenade[4] = 1;
	w_t_grenade[5] = 0;
	w_t_grenade[6] = 0;
	w_t_grenade[7] = 0;
	w_t_grenade[8] = "Grenade";
	w_t_grenade[9] = 1;
	w_t_grenade[10] = 6;
	w_t_grenade[11] = grenade_walk_sprite;
	w_t_grenade[12] = grenade_throw_sprite;
	w_t_grenade[13] = undefined;
	w_t_grenade[14] = false;
	w_t_grenade[15] = undefined;
	w_t_grenade[16] = sndKnifeSlash;
	w_t_grenade[17] = grenade;
	w_t_grenade[18] = 0;
	w_t_grenade[19] = undefined;
	w_t_grenade[20] = false;
	w_t_grenade[21] = true;
	
	
	// throw rate, throw speed, player hold sprite, player throw sprite, weapon sprite
	
	//w_t_grenade = [.5,5, hold_grenade_sprite, throw_grenade_sprite, sprGrenade];
	//w_t_brick = [.5,5, hold_brick_sprite, throw_brick_sprite, sprBrick];
	
	weapon = [w_f_shotgun, w_f_revolver, w_f_ar_15, w_f_sniper,w_m_knife,w_t_grenade];	// items within this list show the player's available weapons at the start of its creation
	weapon_length = array_length(weapon);
}