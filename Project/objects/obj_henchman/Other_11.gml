/// @description FSM universal transitions
// You can write your code in this editor

//check if both henchman n task is selected
if(selected)
{
	var task = noone;
	var found = false;
	var size = instance_number(obj_task);
		
	for(var c=0; c<size; c++) 
	{
		task = instance_find(obj_task,c);
		
		if(task.selected && !task.busy)
		{	found = true;
			break;
		}
	}
	
	if(found)
	{
		curr_task = task;
		STATE = HENCHMAN_STATES.ONTASK;
	
	}

}



