/// @description Collison
if(!place_meeting(x+vx,y,Wall)){
	x += vx;
}else{
	var sx =sign(vx);
	while(!place_meeting(x+sx,y,Wall)){
		x+=sx;
	}
}

if(!place_meeting(x,y+vy,Wall)){
	y += vy;
}else{
	var sy = sign(vy);
	while(!place_meeting(x,y+sy,Wall)){
		y+=sy;
	}
}