/// @description Level6 Setup
event_inherited();

image_blend=c_black;
label = "Checkboxes"

var offx = 0;var offy = 0;
var c = c_black;

//P box
var player_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Player,c);
instance_deactivate_object(player_box);


//RW box
offy+=PADV;
var red_wall_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,RedWall,c_red);
instance_deactivate_object(red_wall_box);

//E box
offy+=PADV;
offx+=PADH;
var exit_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Exit,c);
exit_box.is_locked = true;
red_wall_box.list_boxes[|2] = exit_box;
instance_deactivate_object(exit_box);


//BW box
offy+=PADV;
var blue_wall_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,BlueWall,c_blue);
blue_wall_box.is_locked = true;
blue_wall_box.is_checked = true;
red_wall_box.list_boxes[|0] = blue_wall_box;
instance_deactivate_object(blue_wall_box);


//Z box
offy+=PADV;
var zombie_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Zombie,c);
red_wall_box.list_boxes[|1] = zombie_box;
zombie_box.is_locked  = true;
zombie_box.is_checked = true;
instance_deactivate_object(zombie_box);

//Disable objects
instance_deactivate_object(Guy);
instance_deactivate_object(SolidWall);
instance_deactivate_object(Exit);

