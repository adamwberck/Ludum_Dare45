///@description create_box
///@argument0 x
///@argument1 y
///@argument2 check_obj
///@argument3 color
var box = instance_create_layer(argument[0],argument[1],"Box",Checkbox);
var thing = instance_create_layer(0,0,"Box",argument[2]);
box.label = thing.label;
instance_destroy(thing);
box.check_obj = argument[2];
box.image_blend = argument[3];
return box;