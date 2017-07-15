/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();

if(instance_exists(curr_task))
{

	dest_x = curr_task.x;
	dest_y = curr_task.y;
	mp_potential_step_object(dest_x, dest_y, move_spd, obj_obstacle);
		
	
}
else
{
	curr_task = noone;
	STATE = HENCHMAN_STATES.FOLLOW;


}