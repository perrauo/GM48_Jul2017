/// @description Insert description here
// You can write your code in this editor
event_inherited()

enum BOSS_STATES
{
	STOP,
	FORWARD,
	ANGRY,
}

STATE = BOSS_STATES.FORWARD;


//Create floor collider
bottom_collider = instance_create_depth(x,y, depth-1, obj_floor_collider);
bottom_collider.user = self;
bottom_collider.TYPE = COLLIDER_TYPE.SOLID;
bottom_collider.color = c_yellow;

bottom_collider.height = 10; //dims
bottom_collider.width = 25; //dims
bottom_collider.offset_x = -sprite_width/3;//offsets
bottom_collider.offset_y = -4;



