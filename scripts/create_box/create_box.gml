var box = instance_create_layer(argument[0],argument[1],"Box",argument[2]);
box.image_blend = argument[3];
box.level_box = self;
return box;