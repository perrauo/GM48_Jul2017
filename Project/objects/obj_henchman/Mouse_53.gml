/// @description move with mouse

//IF not busy the allow guide
if(selected)
{
	if(curr_task != noone) && instance_exists(curr_task)
	{
		if(!curr_task.busy)//if tasked but not busy
		{
			curr_task = noone;
			STATE = HENCHMAN_STATES.GUIDE;
		}
	}
	else//if not tasked
	STATE = HENCHMAN_STATES.GUIDE;
	
}

