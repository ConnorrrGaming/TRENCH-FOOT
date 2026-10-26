if can_spurt == false
{
	can_spurt = true;
}
else
{
	can_spurt = false;
}

if spurt_per_heartbeat == true then alarm[1] = heartbeat_delay * room_speed;