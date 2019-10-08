/// @description Move
if(place_meeting(x+vx,y,Wall)){
	vx=0;
}
if(place_meeting(x,y+vy,Wall)){
	vy=0;
}
x+=vx;
y+=vy;
