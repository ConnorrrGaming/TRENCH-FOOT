hlth = 100;

max_blood_spill = 50;

reticle = instance_create_layer(x,y,"Crosshair",objReticle);

damage_overlay = instance_create_layer(0,0,"Filters",objDamageFilter);
damage_overlay.image_alpha = 0;
damage_overlay.visible = false;

revolver_walk_sprite = sprPlayerWalkArmedRevolver;
revolver_fire_sprite = sprPlayerAttackRevolver;
revolver_reload_sprite = undefined;

pistol_walk_sprite = sprPlayerWalkArmedShotgun;
pistol_fire_sprite = sprPlayerFireShotgun;
pistol_reload_sprite = undefined;

shotgun_walk_sprite = sprPlayerWalkArmedShotgun;
shotgun_fire_sprite = sprPlayerFireShotgun;
shotgun_reload_sprite = undefined;

ar_walk_sprite = sprPlayerWalkArmedAR15;
ar_fire_sprite = sprPlayerAttackAR15;
ar_reload_sprite = undefined;

sniper_walk_sprite = sprPlayerWalkArmedShotgun;
sniper_fire_sprite = sprPlayerFireShotgun;
sniper_reload_sprite = undefined;

knife_walk_sprite = sprPlayerWalkArmedKnife;
knife_attack_sprite = sprPlayerAttackKnife;

grenade_walk_sprite = sprPlayerWalkArmedGrenade;
grenade_throw_sprite = sprPlayerAttackGrenade;

bullet = objBullet;
sniper_bullet = objSniperBullet;
knife_hitbox = objKnifeHitbox;
grenade = objGrenade;
throw_dist = 1;
grenade_cook_time = 4;
grenade_cook_time_left = grenade_cook_time;
grenade_cooking = false;
//grenade = objGrenade;

death_sound = irandom_range(sndDeathPlaceholder1,sndDeathPlaceholder3);
damage_sound = irandom_range(sndDamage1,sndDamage3);

damage_taken = 0;
damage_taken_max = 200;
overlay_showing = false;

explosion_death = false;
bled_out = false;
spurting = false;
knockback_slowdown_amount = 8;
damage_inflicted_mult = 0;
state = undefined;

using_weapon = false;

current_weapon = 0;

time_source_list = []

dead = false;
can_fire = true;

alarm[1] = 1;

init_weapon_system();
update_weapon_attributes();
