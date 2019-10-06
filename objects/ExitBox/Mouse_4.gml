/// @description Enable Exit
event_inherited();
if(is_checked){
	instance_activate_object(Exit);
}else{
	instance_deactivate_object(Exit);
}