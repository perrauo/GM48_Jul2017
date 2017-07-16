/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();

if(instance_exists(curr_task) && !arrived)
{

	dest_x = curr_task.x;
	dest_y = curr_task.y;
	
	dest_y = clamp(dest_y,260, 300);
	
	//move toward defined point
	mp_potential_step_object(dest_x, dest_y, move_spd, obj_obstacle);
	
	
	
	//Determine if arrived at the task spot
	with(bottom_collider)
	{
		if(place_meeting(x,y,other.curr_task))
		{	
			other.arrived = true;	
	
		}
		else
		other.arrived = false;
		
		//if car splash task allow collision with collider
		if(other.curr_task.TYPE == TASK_TYPES.CARSPLASH)
		{
			
			
			//define the trigger zone
			var trigger_zone = other.curr_task.trigger_zone;
			
			
		other.dest_x = trigger_zone.x;
		other.dest_y = trigger_zone.y;
	
		other.dest_y = clamp(other.dest_y,260, 300);
	
		//move toward defined point
		mp_potential_step_object(other.dest_x, other.dest_y, other.move_spd, noone);
			
			
			//if touch trigger zone mark as arrived
			if(place_meeting(x,y-5,trigger_zone))
			{	
			other.arrived = true;	
			}
			else
			other.arrived = false;
		
		}
	
	
	}
	
	
	
}
else
	//perform state machine
	if(arrived && instance_exists(curr_task))
	{
		switch(curr_task.TYPE)
		{	
			//
			case TASK_TYPES.PUDDLE:
			STATE = HENCHMAN_STATES.SPRAWL;
			break;
			
			//
			case TASK_TYPES.UMBRELLA:
			STATE = HENCHMAN_STATES.UMBRELLA;
			
			break;
			
			//
			case TASK_TYPES.CARSPLASH:
			STATE = HENCHMAN_STATES.HOLDING;
			break;
				
		}
	
	}else
//no curr task
{
	
	STATE = HENCHMAN_STATES.FOLLOW;
}



//particles

if(instance_exists(curr_task) && curr_task != noone)
{
if(curr_task.busy)
exit;

}

//else

//get angle
dir = point_direction(x, y, dir_x, dir_y);

var pt = global.pt_water1;

//get angle
dir = point_direction(x, y, dir_x, dir_y);

//light_beige = make_color_rgb(255, 255, 179);
color = make_color_rgb(224, 234, 244);

part_type_alpha3(pt,.03,1,.5);//set alpha
part_type_speed(pt,.1,2,0,.5);
part_type_color1(pt, color);
part_type_direction(pt, dir-10, dir+10,0,0);
part_type_life(pt, 10,20);
part_type_gravity(pt,.08, down);
part_type_sprite(pt,spr_part_rain,1,0,true);


part_emitter_region(global.ps_water, em_water,x-10,x-5,y,y,0,0);

if(alarm_get(11) == -1)
{	//set part alarm
	alarm_set(11,random_range(10,20));
}





