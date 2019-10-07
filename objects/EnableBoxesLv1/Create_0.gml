/// @description Level1 Setup
event_inherited();


image_blend=c_black;
label = "Checkboxes"
var offx = 0;var offy = 0;

//P box
var player_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Player,c);
instance_deactivate_object(player_box);

//W box
offy+=PADV;
offx+=PADH;
var wall_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Wall,c);
player_box.list_boxes[|0]=wall_box;
wall_box.is_locked=true;
instance_deactivate_object(wall_box);

//E box
offy+=PADV;
var exit_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Exit,c);
player_box.list_boxes[|1]=exit_box;
exit_box.is_locked = true;

instance_deactivate_object(exit_box);
instance_deactivate_object(Player);
instance_deactivate_object(SolidWall);
instance_deactivate_object(Exit);