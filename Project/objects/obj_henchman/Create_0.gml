/// @description Insert description here
// You can write your code in this editor
event_inherited()



enum HENCHMAN_STATES
{
	FOLLOW,
	ONTASK,
	UMBRELLA,
	FAILED,
	GUIDE,
	
	//task specific states
	SPRAWL,
}

STATE = HENCHMAN_STATES.FOLLOW;


//Hold current task
curr_task = noone;


//Create floor collider
bottom_collider = instance_create_depth(x,y, depth-1, obj_floor_collider);
bottom_collider.user = self;
bottom_collider.TYPE = COLLIDER_TYPE.SOLID;
bottom_collider.color = c_red;

bottom_collider.height = 10; //dims
bottom_collider.offset_x = -sprite_width/3;//offsets
bottom_collider.offset_y = -4;



