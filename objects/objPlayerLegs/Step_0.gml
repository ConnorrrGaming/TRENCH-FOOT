torso.x = x;
torso.y = y;
		
if torso.using_weapon != true 
{
	torso.image_speed = image_speed;
}
else
{
	torso.image_speed = 1;
}

var move_l = (keyboard_check(ord("A")) || keyboard_check(vk_left));
var move_r = (keyboard_check(ord("D")) || keyboard_check(vk_right));
var move_d = (keyboard_check(ord("S")) || keyboard_check(vk_down));
var move_u = (keyboard_check(ord("W")) || keyboard_check(vk_up));

var move_sprint = (keyboard_check(vk_shift))

var move_h = move_r - move_l;
var move_v = move_d - move_u;
		
if (move_l || move_r || move_d || move_u)
{
	self.image_speed = (spd);
}
else
{
	self.image_speed = 0;
	self.image_index = 0;
}

if (move_sprint) && (move_x != 0 || move_y != 0)
{
	move_x = ((move_h * spd)*2);
	move_y = ((move_v * spd)*2);
	create_noise(5,objEnemy);
}
else
{
	move_x = (move_h * spd);
	move_y = (move_v * spd);
}

rotate_to_point(move_r,move_d,move_l,move_u,.1);
		
try
{
	//Horizontal collision
	if place_meeting(x+(move_x),y,objClearCollision) {
		while (!place_meeting(x+sign(move_x),y,objClearCollision)) {
			x = x + sign(move_x); }
		move_x = 0; }
	x = x + move_x;


	//Vertical collision
	if place_meeting(x,y+(move_y),objClearCollision) { 
		while (!place_meeting(x,y+sign(move_y),objClearCollision)) {
			y = y + sign(move_y); }
		move_y = 0; }
	y = y + move_y;
}
catch(_exception)
{
	show_debug_message("ERROR: "+(string(_exception.message)));
}

		
		
		
