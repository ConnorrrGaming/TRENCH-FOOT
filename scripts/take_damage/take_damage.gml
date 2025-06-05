function take_damage(damage_amount,damage_mult,blood,attacker,damage_sfx,damage_cause)
{	
	if blood == true 
	{
		for(var i = 0; i <= ((damage_mult * damage_amount) / 16); i++)
		{
			if self.max_blood_spill > 0
			{
				var blood_speed = irandom_range(2,6);
				blood_spurt(point_direction(x,y,self.x,self.y),blood_speed,-360,360,x,y);
				self.max_blood_spill--;
			}
		}
	}
	
	hlth -= (damage_amount * damage_mult);
	
	if self.dead == false
	{
		audio_stop_sound(damage_sfx);
		audio_play_sound(damage_sfx,10,false);
	}
	
	death_cause = object_get_name(damage_cause);
	
	show_debug_message(string(object_get_name(object_index))+" has taken damage "+string(damage_amount+damage_mult)+"\nHealth: "+string(self.hlth));
	
	if self.damage_taken < (damage_taken_max-75) then self.damage_taken += damage_amount;
}