/// @description Toggle (if unlocked)
if(!is_locked){
	var n = is_checked ? B2 : E2;
	var a = audio_play_sound(n,1,false);
	var o = is_checked ?.70 : .50;
	audio_sound_set_track_position(a,o);
	is_checked = !is_checked;
	for(var i=0;i<ds_list_size(list_boxes);i++){
		with(list_boxes[|i]){
			is_checked = !is_checked;
			event_perform(ev_mouse,ev_left_press);
		}
	}
}

if(is_checked){
	instance_activate_object(check_obj);
}else{
	instance_deactivate_object(check_obj);
}