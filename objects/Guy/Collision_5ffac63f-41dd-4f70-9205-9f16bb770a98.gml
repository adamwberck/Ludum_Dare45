/// @description Move out
var wall = instance_nearest(x,y,Wall);
var dir = (point_direction(x,y,wall.x,wall.y)+180) %360
x+=lengthdir_x(1,dir);
y+=lengthdir_y(1,dir);