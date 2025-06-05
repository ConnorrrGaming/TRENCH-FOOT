spd = 1;
move_x = 0;
move_y = 0;
torso = instance_create_layer(x,y,"Torso",objPlayer);
state = 1;
state_definition = [];
state_definition[0] = "Paused";
state_definition[1] = "Playable";
//shotgun_walk_sprite = sprPlayerWalkShotgun;
angle = [0,45,90,135,180,225,270,315,360];
alarm[0] = 0 * room_speed;

