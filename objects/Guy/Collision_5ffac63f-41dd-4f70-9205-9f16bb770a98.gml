/// @description Move Out
var col = instance_nearest(x,y,Wall);
var dir = (point_direction(x,y,col.x,col.y)+180) %360
x+=lengthdir_x(1,dir);
y+=lengthdir_y(1,dir);