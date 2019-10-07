/// @description Move
//Friction
var move_fric = not_moving ? fric+accel : fric; //if not moving then you accel to a stop

var spd = sqrt(sqr(vx)+sqr(vy));
var dir = (point_direction(0,0,vx,vy)+180)%360;
var ax,ay;
if(spd<fric){
	move_fric = spd;
}
ax = lengthdir_x(move_fric,dir);
ay = lengthdir_y(move_fric,dir);
vx += ax;
vy += ay;

if(!not_moving){
	var dir = goal_dir;
	var ax,ay;
	ax = lengthdir_x(accel,dir);
	ay = lengthdir_y(accel,dir);
	vx += ax;
	vy += ay;
	spd = sqrt(sqr(vx)+sqr(vy));
	if(spd>max_spd){
		vx = lengthdir_x(max_spd,dir);
		vy = lengthdir_y(max_spd,dir);
	}
}

//if slow stop
if(not_moving && abs(vx)<.5 && abs(vy)<.5){
	vx=0;vy=0;
}
