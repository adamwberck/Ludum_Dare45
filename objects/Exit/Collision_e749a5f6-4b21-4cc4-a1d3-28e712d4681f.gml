/// @description Next level
if (room_next(room) != -1){
    room_goto_next();
}else{
	show_message("WIN!");
	room_goto(room_first);
}