/// @description Handle Death
event_inherited();
if(hp<=0){
	dead=true;
}
if(!dead){
	hp = approach(hp,100,1);
}
else{
	vx=0;vy=0;
	label = "Corpse";
	image_blend = c_gray;
}