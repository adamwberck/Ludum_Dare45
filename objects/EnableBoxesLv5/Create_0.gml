/// @description Level1 Setup
event_inherited();


image_blend=c_black;
label = "Checkboxes"

//list_check1 = ds_list_create();//make list
var PADV = sprite_width*1.2;
var PADH = sprite_width*.5;
var LEFT_MARGIN = x;
var offx = 0;var offy = 0;
var TOP_MARGIN = y+PADV*2;
var c = c_black;


//P box
var player_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Player,c);
instance_deactivate_object(player_box);

//W box
offy+=PADV;
var wall_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Wall,c);
instance_deactivate_object(wall_box);

//E box
offy+=PADV;
offx+=PADH;
var exit_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Exit,c);
wall_box.list_boxes[|0] = exit_box;
exit_box.is_locked = true;
instance_deactivate_object(exit_box);

//Z box
offy+=PADV;
var zombie_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Zombie,c);
wall_box.list_boxes[|1] = zombie_box;
zombie_box.is_locked = true;
instance_deactivate_object(zombie_box);

//Disable objects
instance_deactivate_object(Guy);
instance_deactivate_object(SolidWall);
instance_deactivate_object(Exit);