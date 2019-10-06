/// @description Enable Player

// Inherit the parent event
event_inherited();
if(is_checked){
	instance_activate_object(Player);
}else{
	instance_deactivate_object(Player);
}