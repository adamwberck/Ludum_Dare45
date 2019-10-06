/// @description Player Movement
var mouse_over = place_meeting(mouse_x,mouse_y,Checkbox);
not_moving = !mouse_check_button(mb_left) 
	|| point_distance(x,y,mouse_x,mouse_y)<sprite_width 
	|| mouse_over;
goal_dir = point_direction(x,y,mouse_x,mouse_y)