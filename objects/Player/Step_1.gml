/// @description Player Movement
not_moving = !mouse_check_button(mb_left) || point_distance(x,y,mouse_x,mouse_y)<30;//h==0 && v==0;
goal_dir = point_direction(x,y,mouse_x,mouse_y)