draw_text(10,10,"Number of Instances: "+string(instance_count));
draw_text(10,25,"Weapon: "+string(objPlayer.weapon_name));
draw_text(10,40,"Health: "+string(objPlayer.hlth));
if objPlayer.grenade_cooking == true draw_healthbar(10,100,500,110,objPlayer.throw_dist*2,c_black,c_red,c_red,0,true,true);
//draw_text(10,10,"This is a test demo, created by BLOODBATH GAMES");