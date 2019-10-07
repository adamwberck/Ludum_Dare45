/// @description Level3 Setup
event_inherited();

image_blend=c_black;
label = "Checkboxes"
var offx = 0;var offy = 0;


//Z box
var zombie_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Zombie,c);
instance_deactivate_object(zombie_box);


//P box
offy+=PADV;
var player_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Player,c);
instance_deactivate_object(player_box);

//W box
offy+=PADV;
var wall_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Wall,c);
instance_deactivate_object(wall_box);

//E box
offy+=PADV;
var exit_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Exit,c);
instance_deactivate_object(exit_box);


//Disable objects
instance_deactivate_object(Guy);
instance_deactivate_object(SolidWall);
instance_deactivate_object(Exit);