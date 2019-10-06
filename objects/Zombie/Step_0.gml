/// @description Move Towards Player
xspeed = spd;
if(instance_exists(Player)){
	max_spd = 4;
	var dir = point_direction(x,y,Player.x,Player.y);
	spd = approach(spd,max_spd,accel);
	x+= lengthdir_x(max_spd,dir);
	y+= lengthdir_y(max_spd,dir);
	wander_dir = random_range(0,360);
}else{
	max_spd = random_range(0,1);
	spd = approach(spd,max_spd,accel);
	x+= lengthdir_x(max_spd,wander_dir);
	y+= lengthdir_y(max_spd,wander_dir);
	if(!alarm0couting){
		alarm0couting=true;
		alarm[0]=irandom_range(90,280)
		wander_dir = random_range(0,360);
	}
}