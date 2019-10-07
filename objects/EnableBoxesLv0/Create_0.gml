/// @description Level0 Setup
event_inherited();
var offx = 0;var offy = 0;
//P box
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


instance_deactivate_object(Player);
instance_deactivate_object(SolidWall);
instance_deactivate_object(Exit);