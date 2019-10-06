/// @description Player Movement
not_moving = !mouse_check_button(mb_left) 
	|| point_distance(x,y,mouse_x,mouse_y)<sprite_width 
	|| Checkbox.hover;
goal_dir = point_direction(x,y,mouse_x,mouse_y)