/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();

if(instance_exists(curr_task))
{

	dest_x = curr_task.x;
	dest_y = curr_task.y;
	
	dest_y = clamp(dest_y,260, 300);
	
	mp_potential_step_object(dest_x, dest_y, move_spd, obj_obstacle);
	
	//Determine if arrived at the task spot
	with(bottom_collider)
	{
		if(place_meeting(x,y,other.curr_task))
		{	
			other.arrived = true;	
	
		}
	}
	
	//perform state machine
	if(arrived)
	{
		switch(curr_task.TYPE)
		{	
			//
			case TASK_TYPES.PUDDLE:
			STATE = HENCHMAN_STATES.SPRAWL;
			break;
			
			//
			case TASK_TYPES.UMBRELLA:
			
			break;
			
			//
			case TASK_TYPES.CARSPLASH:
			
			break;
			
		
		}
		
	
	}
	
	
	
}
else
{
	curr_task = noone;
	STATE = HENCHMAN_STATES.FOLLOW;


}