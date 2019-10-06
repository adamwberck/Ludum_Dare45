/// @description Enable other boxes
// Inherit the parent event
event_inherited();
if(is_checked){
	instance_activate_object(Checkbox);
}
else{
	instance_deactivate_object(Checkbox);
	instance_activate_object(self);
	instance_activate_object(Director);
}