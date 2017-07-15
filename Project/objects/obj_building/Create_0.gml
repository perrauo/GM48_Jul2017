/// @description Insert description here
// You can write your code in this editor

event_inherited();

//choose diff
sprite_index = choose(spr_building1, spr_building2);

////Create floor collider
bottom_collider = instance_create_depth(x,y, depth+1, obj_floor_collider);
bottom_collider.user = self;
bottom_collider.TYPE = COLLIDER_TYPE.SOLID;
bottom_collider.color = c_red;

bottom_collider.height = 10;
bottom_collider.offset_y = -10; //dims
bottom_collider._visible = false;
