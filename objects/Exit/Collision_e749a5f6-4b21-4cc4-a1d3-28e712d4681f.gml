/// @description Next level
if(flag){
	var a = audio_play_sound(A2,0,false);
	audio_sound_set_track_position(a,.55);
	flag = false;
	alarm[0]=100;
	
}else{
	Guy.vx=0;
	Guy.vy=0;
}