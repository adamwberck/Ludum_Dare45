/// @description Create list
list_boxes = ds_list_create();

if(is_checked){
	instance_activate_object(check_obj);
}else{
	instance_deactivate_object(check_obj);
}