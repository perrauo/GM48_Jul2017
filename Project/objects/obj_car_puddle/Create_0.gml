/// @description Insert description here
// You can write your code in this editor

event_inherited();


wet_offset_y = -60;
wet_offset_x = -30;

//TASK TYPE
TYPE = TASK_TYPES.CARSPLASH;

//Create floor collider
trigger_zone = instance_create_depth(x,y, depth-1, obj_floor_collider);
trigger_zone.user = self;
trigger_zone.TYPE = COLLIDER_TYPE.SOLID;
trigger_zone.color = c_fuchsia;

//dims
trigger_zone.height =60; //dims
trigger_zone.offset_x = -sprite_width/2; 
trigger_zone.offset_y = -60;


//Create floor collider
wet_zone = instance_create_depth(x,y, depth-1, obj_floor_collider);
wet_zone.user = self;
wet_zone.TYPE = COLLIDER_TYPE.SPLASH;
wet_zone.color = c_aqua;

//dims
wet_zone.height =60; //dims
wet_zone.width = sprite_width/2; //dims
wet_zone.offset_x = -sprite_width/2; 
wet_zone.offset_y = wet_offset_y;

