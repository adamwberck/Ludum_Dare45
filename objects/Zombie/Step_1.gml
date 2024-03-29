/// @description Move Towards Player
not_moving = false;
if(instance_exists(Player)){
	not_moving = point_distance(x,y,Player.x,Player.y)<sprite_width*.5;
	max_spd = 5;
	accel = .2;
	goal_dir = point_direction(x,y,Player.x,Player.y);
	alarm0couting=false;
	if(image_speed<1) then image_speed=1;
}else{
	if(image_speed>=1) then image_speed=.5;
	max_spd = random_range(0,2);
	accel = .4;
	spd = approach(spd,max_spd,accel);
	goal_dir = wander_dir;
	if(!alarm0couting){
		alarm0couting=true;
		alarm[0] = irandom_range(90,250);//randomly walk in one direction for some time
		wander_dir = random_range(0,360); //randomly direction
	}
}
