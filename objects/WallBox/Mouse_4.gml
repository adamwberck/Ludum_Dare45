/// @description Enable Wall
event_inherited();
if(is_checked){
	instance_activate_object(Wall);
}else{
	instance_deactivate_object(Wall);
}