/// @description Enable Wall
event_inherited();
if(is_checked){
	instance_activate_object(SolidWall);
}else{
	instance_deactivate_object(SolidWall);
}