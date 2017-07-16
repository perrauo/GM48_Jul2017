/// @description Insert description here
// You can write your code in this editor
event_inherited()

start_move_spd = 2;
move_spd = 2;

//hor n ver spd
xspd = 0;
yspd = 0;

//normalized dir vector
dir_x = 1;
dir_y = 0;

xscale = 1;
alpha = 1;


enum BOSS_STATES
{
	STOP,
	FORWARD,
	ANGRY,
	RAGE,
}

STATE = BOSS_STATES.FORWARD;
//TASK TYPE
TYPE = TASK_TYPES.UMBRELLA;


//Create floor collider
bottom_collider = instance_create_depth(x,y, depth-1, obj_floor_collider);
bottom_collider.user = self;
bottom_collider.TYPE = COLLIDER_TYPE.SOLID;
bottom_collider.color = c_yellow;

bottom_collider.height = 5; //dims
bottom_collider.width = 25; //dims
bottom_collider.offset_x = -sprite_width/3;//offsets
bottom_collider.offset_y = -4;


//create emiter
em_water = part_emitter_create(global.ps_water);



