hlth = 100;

live = 3;

max_blood_spill = 200;

reticle = instance_create_layer(x,y,"Crosshair",objReticle);

damage_overlay = instance_create_layer(0,0,"Filters",objDamageFilter);
damage_overlay.image_alpha = 0;
damage_overlay.visible = true;
damage_overlay_max = .9;

checkpoint = undefined;

medkits = 0;

deaths = 0;

secondary_fade = false;

second_fade = undefined;

revolver_walk_sprite = sprPlayerWalkArmedRevolver;
revolver_fire_sprite = sprPlayerAttackRevolver;
revolver_reload_sprite = sprPlayerReloadRevolver;

pistol_walk_sprite = sprPlayerWalkArmedShotgun;
pistol_fire_sprite = sprPlayerFireShotgun;
pistol_reload_sprite = sprPlayerReloadShotgun;

shotgun_walk_sprite = sprPlayerWalkArmedShotgun;
shotgun_fire_sprite = sprPlayerFireShotgun;
shotgun_reload_sprite = sprPlayerReloadShotgun;

double_walk_sprite = sprPlayerWalkArmedDouble;
double_fire_sprite = sprPlayerAttackDouble;
double_reload_sprite = sprPlayerReloadDouble;

ar_walk_sprite = sprPlayerWalkArmedAR15;
ar_fire_sprite = sprPlayerAttackAR15;
ar_reload_sprite = sprPlayerReloadAR15;

uzi_walk_sprite = sprPlayerWalkArmedAR15;
uzi_fire_sprite = sprPlayerAttackAR15;
uzi_reload_sprite = sprPlayerReloadAR15;

sniper_walk_sprite = sprPlayerWalkArmedSniper;
sniper_fire_sprite = sprPlayerAttackSniper;
sniper_reload_sprite = sprPlayerReloadShotgun;

knife_walk_sprite = sprPlayerWalkArmedKnife;
knife_unholstered_walk_sprite = sprPlayerWalkArmedKnifeUnholstered;
knife_attack_sprite = sprPlayerAttackKnife;

grenade_walk_sprite = sprPlayerWalkArmedGrenade;
grenade_throw_sprite = sprPlayerAttackGrenade;

main_death_sprite = sprPlayerDead;
firearm_disembowl_death_sprite = sprEnemyDeadShotgunDecapArm;
head_explode_death_sprite = sprEnemyDeadShotgunHeadshot;
head_explode_piss_death_sprite = sprEnemyDeadShotgunHeadshotPiss;
head_explode_walk_death_sprite = sprEnemyDeadShotgunHeadshotWalk;
knife_disembowl_death_sprite = sprEnemyDeadKnifeDisembowel;
knife_main_death_sprite = sprEnemyDeadSlashed;
knife_head_decap_death_sprite = sprEnemyDeadHeadDecap;
glass_shard_death_sprite = sprEnemyDeadGlassShard;
explosion_death = sprEnemyDeadExplosion;

helmet_sprite = sprHelmet;

bullet = objBullet;
sniper_bullet = objSniperBullet;
knife_hitbox = objKnifeHitbox;
grenade = objGrenade;
throw_dist = 1;
grenade_cook_time = 4;
grenade_cook_time_left = grenade_cook_time;
grenade_cooking = false;
sharp_charge = false;
sharp_damage = 1;

meter_at_max = false;


death_sound = irandom_range(sndDeathPlaceholder1,sndDeathPlaceholder3);
damage_sound = irandom_range(sndDamage1,sndDamage3);

damage_taken = 0;
damage_taken_max = 150;
overlay_showing = false;

explosion_death = false;
bled_out = false;
spurting = false;
tangled = false;
knockback_slowdown_amount = 8;
damage_inflicted_mult = 0;
state = undefined;

using_weapon = false;

reloading = false;

time_source_list = [];

dead = false;
rigor_mortis = false;
gibbed = false;
can_fire = true;
preying = false;

alarm[1] = 1;

current_weapon = 0;
create_ammo();
create_weapons();
current_primary = weapon.shotgun;
current_secondary = weapon.revolver;
owned_weapons = [weapon.knife,current_primary,current_secondary];
weapon_length = array_length(owned_weapons);
update_weapon_attributes();

create_primary_stored_weapon();
create_secondary_stored_weapon();

light = instance_create_layer(x,y,layer,objCharacterLight);
light.target = self;