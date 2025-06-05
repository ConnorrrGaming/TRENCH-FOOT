blood_trail_dir = []
blood_trail_dir[0] = 45;
blood_trail_dir[1] = 90;
blood_trail_dir[2] = 135;
blood_trail_dir[3] = 180;
blood_trail_dir[4] = 225;
blood_trail_dir[5] = 270;
blood_trail_dir[6] = 315;
blood_trail_dir[7] = 360;

var blood_dir = array_length(blood_trail_dir);

for(var i = 0; i < blood_dir; i++)
{
	start_blood_trail(20,blood_trail_dir[i]);
}