/// @description Enable Exit
event_inherited();
if(is_checked){
	instance_activate_object(Zombie);
}else{
	instance_deactivate_object(Zombie);
}