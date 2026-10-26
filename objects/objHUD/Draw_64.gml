

draw_set_font(fntHUD);
draw_set_halign(fa_left);
draw_set_valign(fa_left);
if keyboard_check(vk_tab)
{
	hud_el_name = ["Health","Weapon","Ammo Loaded","Total Ammo"];
	hud_el_info = [objPlayer.hlth,objPlayer.weapon_name,objPlayer.ammo_loaded_total,objPlayer.ammo_owned_total];
	
	draw_sprite_ext(sprHealthMeterCol,image_index,screen_w/screen_w*1,screen_h/screen_h*100,1,1,0,c_white,true);
	if objPlayer.hlth > 0 draw_sprite_ext(sprHealthMeterBase,image_index,screen_w/screen_w*1,screen_h/screen_h*100,1,objPlayer.hlth/100,0,c_white,true);
	for(var i = 0; i < array_length(hud_el_name);i++)
	{
		draw_text(hud_el_start_x,hud_el_start_y + (i*hud_el_space),string(hud_el_name[i])+string(": ")+string(hud_el_info[i]));
	}
}
if objPlayer.grenade_cooking == true draw_healthbar(10,100,500,110,objPlayer.throw_dist*2,c_black,bar_min_col,bar_max_col,0,true,true);
if objPlayer.sharp_charge == true draw_healthbar(10,100,500,110,objPlayer.sharp_damage * 10,c_black,bar_min_col,bar_max_col,0,true,true);
if instance_exists(objRecordPlayer)
{
	if objRecordPlayer.show_prompt == true then draw_text(objRecordPlayer.x,objRecordPlayer.y,objRecordPlayer.prompt);
}

if array_length(global.hud_queue) > 0
{
	for(var i = 0; i < array_length(global.hud_queue); i++)
	{
		draw_text(hud_msg_start_x,hud_msg_start_y*(i*hud_msg_mult_space),global.hud_queue[i]);
	}
}
//draw_text(10,10,"This is a test demo, created by BLOODBATH GAMES");