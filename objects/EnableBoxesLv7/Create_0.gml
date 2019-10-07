/// @description Level6 Setup
event_inherited();

image_blend=c_black;
label = "Checkboxes"

var offx = 0;var offy = 0;
var c = c_black;

//P box
var player_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Player,c);
instance_deactivate_object(player_box);

	offx+=PADH;
	//Z box
	offy+=PADV;
	var zombie_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Zombie,c);
	player_box.list_boxes[|1] = zombie_box;
	zombie_box.is_locked  = true;
	instance_deactivate_object(zombie_box);
	
	//W box
	offy+=PADV;
	var wall_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,BlackWall,c);
	player_box.list_boxes[|0] = wall_box;
	wall_box.is_locked  = true;
	instance_deactivate_object(wall_box);

offx-=PADH;

//RW box
offy+=PADV;
var red_wall_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,RedWall,c_red);
instance_deactivate_object(red_wall_box);


//BW box
offy+=PADV;
var blue_wall_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,BlueWall,c_blue);
instance_deactivate_object(blue_wall_box);


//E box
offy+=PADV;
var exit_box = create_box(LEFT_MARGIN+offx,TOP_MARGIN+offy,Exit,c);
instance_deactivate_object(exit_box);


//Disable objects
instance_deactivate_object(Guy);
instance_deactivate_object(SolidWall);
instance_deactivate_object(Exit);

