/// @description Toggle (if unlocked)
if(!is_locked){
	is_checked = !is_checked;
	for(var i=0;i<ds_list_size(list_boxes);i++){
		with(list_boxes[|i]){
			is_checked = other.is_checked;
			event_perform(ev_mouse,ev_left_press);
		}
	}
}