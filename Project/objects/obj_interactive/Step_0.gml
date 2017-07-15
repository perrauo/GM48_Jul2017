/// @description Insert description here
// You can write your code in this editor

event_inherited();

//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.




//////////////detect mouse
if point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
{
	mouse_on_top = true;
}
else
{
	mouse_on_top = false
}		

		
		
////////////if mouse on top ..
if(mouse_on_top)
{
	if(pulse<pi)
	{
	pulse_over =  false; //set pulse to be donee
	}

	if(mouse_check_button(mb_any))
	{
		if(mouse_check_button_pressed(mb_any))
		{
			
		with(obj_task)
		{
		selected = false;
		}			
		
		
		//assign task
		selected = true;
		alarm_set(0, selected_time);
		pulse = 0;
		
		
		}
				
	}
	
			
}
else
pulse = 0;		
		
	
		
//if pulse is over then set to non click size (.2)
if(pulse_over)
{
	pulse_size= max_pulse;
}

//do pulse if needed
event_user(0);


