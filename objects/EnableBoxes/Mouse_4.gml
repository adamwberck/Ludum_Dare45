/// @description Enable other boxes
if(!is_locked){
	is_checked = !is_checked;
	var n = is_checked ? B2 : E2;
	var a = audio_play_sound(n,1,false);
	var o = is_checked ?.70 : .50;
	audio_sound_set_track_position(a,o);
	for(var i=0;i<ds_list_size(list_boxes);i++){
		with(list_boxes[|i]){
			is_checked = !is_checked;
			event_perform(ev_mouse,ev_left_press);
		}
	}
}


if(is_checked){
	instance_activate_object(Checkbox);
}
else{
	instance_deactivate_object(Checkbox);
	instance_activate_object(self);
}